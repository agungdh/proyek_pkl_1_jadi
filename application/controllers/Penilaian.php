<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_penilaian');	
		$this->load->model('m_dokumen');	
		$this->load->library('pustaka');	
	}

	function index($id_pengajuan) {
		$data['isi'] = "penilaian/index";
		$data['data']['penilaian'] = $this->m_penilaian->ambil_penilaian($id_pengajuan);
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($id_pengajuan);

		$this->load->view("template/template", $data);
	}

	function nilai($id_pengajuan) {
		$data['isi'] = "penilaian/nilai";
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($id_pengajuan);
		$data['data']['penilaian'] = $this->m_penilaian->ambil_penilaian_id_pengajuan($id_pengajuan);

		$this->load->view("template/template", $data);
	}

	function tambah($id_pengajuan) {
		$data['isi'] = "penilaian/tambah";
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($id_pengajuan);
		$data['data']['standar'] = $this->m_penilaian->ambil_standar($data['data']['pengajuan']->id_tipeversi);

		$this->load->view("template/template", $data);
	}

	function ubah($id_penilaian) {
		$data['isi'] = "penilaian/ubah";
		$data['data']['penilaian_id'] = $this->m_penilaian->ambil_penilaian_id($id_penilaian);
		$data['data']['penilaian'] = $this->m_penilaian->ambil_penilaian($data['data']['penilaian_id']->pengajuan_id);
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($data['data']['penilaian_id']->pengajuan_id);
		$data['data']['standar'] = $this->m_penilaian->ambil_standar($data['data']['pengajuan']->id_tipeversi);

		$this->load->view("template/template", $data);
	}

	function aksi_tambah() {
		$id_pengajuan = $this->input->post('id_pengajuan');
		$nilai = $this->input->post('nilai');

		$id_penilaian = $this->m_penilaian->tambah_penilaian(
			date('Y-m-d'),
			$id_pengajuan
		);	

		foreach ($nilai as $butir => $jumlah_nilai) {
			if ($jumlah_nilai != null) {
				$this->m_penilaian->tambah_detil_penilaian($id_penilaian, $butir, $jumlah_nilai);
			}
		}

		redirect(base_url('penilaian/index/'.$id_pengajuan));
	}

	function aksi_ubah() {
		$id_pengajuan = $this->input->post('id_pengajuan');
		$id_penilaian = $this->input->post('id_penilaian');
		$nilai = $this->input->post('nilai');

		foreach ($nilai as $butirpenilaian_id => $nilai) {
			$total_data = $this->db->get_where('detilpenilaian', array('butirpenilaian_id' => $butirpenilaian_id, 'penilaian_id' => $id_penilaian))->row();
			// var_dump($total_data) . "<br>\n";
			// echo $this->db->last_query() . "<br>\n";
			if ($total_data == null) {
				if ($nilai != null) {
					$this->m_penilaian->tambah_detil_penilaian($id_penilaian, $butirpenilaian_id, $nilai);
				}
			} else {
				$where['penilaian_id'] = $id_penilaian;
				$where['butirpenilaian_id'] = $butirpenilaian_id;
				$data['nilai'] = $nilai;
				if ($nilai != null) {
					$this->db->update('detilpenilaian', $data, $where);
				} else {
					$this->db->delete('detilpenilaian', $where);
				}
			}
		}

		redirect(base_url('penilaian/index/'.$id_pengajuan));
	}

	function aksi_hapus($id_penilaian, $id_pengajuan) {
		$this->m_penilaian->hapus_penilaian($id_penilaian);

		redirect(base_url('penilaian/index/'.$id_pengajuan));
	}

	function export_excel($id_penilaian) {
		$data['penilaian_id'] = $this->m_penilaian->ambil_penilaian_id($id_penilaian);
		$data['penilaian'] = $this->m_penilaian->ambil_penilaian($data['penilaian_id']->pengajuan_id);
		$data['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($data['penilaian_id']->pengajuan_id);
		$data['standar'] = $this->m_penilaian->ambil_standar($data['pengajuan']->id_tipeversi);

		$this->load->library('excel');
		
		$iterasi = 0;		
		foreach ($data['standar'] as $item) {

		if ($iterasi > 0) {
			$this->excel->createSheet();
    		$sheet = $this->excel->setActiveSheetIndex($iterasi);
		} else {
			$this->excel->setActiveSheetIndex($iterasi);
		}
		
		$iterasi++;
		$this->excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);
		
		$this->excel->getActiveSheet()->setTitle('Standar ' . $item->nomor);
		
		foreach(range('A','C') as $columnID) {
		    $this->excel->getActiveSheet()->getColumnDimension($columnID)
		        ->setAutoSize(true);
		}

		$this->excel->getActiveSheet()->setCellValue('A1', 'DATA LIMBAH B3 YANG KELUAR DARI TPS');
		$this->excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
		$this->excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
		$this->excel->getActiveSheet()->mergeCells('A1:G1');
		$this->excel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

		$this->excel->getActiveSheet()->getStyle('A3:G3')->getFont()->setBold(true); 
		$this->excel->getActiveSheet()->setCellValue('A3', 'STANDAR');
		$this->excel->getActiveSheet()->setCellValue('B3', 'SUBSTANDAR');
		$this->excel->getActiveSheet()->setCellValue('C3', 'BUTIR');
		$this->excel->getActiveSheet()->setCellValue('D3', 'BUTIR PENILAIAN');
		$this->excel->getActiveSheet()->setCellValue('E3', 'BOBOT');
		$this->excel->getActiveSheet()->setCellValue('F3', 'NILAI');
		$this->excel->getActiveSheet()->setCellValue('G3', 'LIST DOKUMEN');

		$i = 1;
		$a = 4;
		$styleArray = array(
		      'borders' => array(
		          'allborders' => array(
		              'style' => PHPExcel_Style_Border::BORDER_THIN
		          )
		      )
		  );
		  $styleArrayBold = array(
		      'borders' => array(
		          'allborders' => array(
		              'style' => PHPExcel_Style_Border::BORDER_MEDIUM
		          )
		      )
		  );
		
		$id_standar = 0; $id_substandar = 0; $id_butir = 0; $id_listdokumen = 0; 
	      foreach ($this->m_penilaian->ambil_detail($item->id) as $item2) {
	          if ($id_standar == $item2->id_standar) {
	            $standar = null;
	          } else {
	            $standar = $item2->nomor_standar . ' ' . $item2->nama_standar;
	          }
	          
	          if ($id_substandar == $item2->id_substandar) {
	            $substandar = null;
	          } else {
	            $substandar = $item2->nomor_substandar . ' ' . $item2->nama_substandar;
	          }
	          
	          $jml_lido = count($this->db->get_where('butirpenilaian', array('butir_id' => $item2->id_butir))->result());
	          if ($id_butir == $item2->id_butir) {
	            $butir = null;
	            $lido = null;
	          } else {
	            $butir = $item2->nomor_butir . ' ' . $item2->nama_butir;
	            $isi_lido = null;
	            foreach ($this->db->get_where('listdokumen', array('butir_id' => $item2->id_butir))->result() as $item3) {
	              $temp_lido = $this->db->get_where('dokumen', array('listdokumen_id' => $item3->id))->result();
	              if ($temp_lido != null) {
	                foreach ($temp_lido as $item4) {
	                  $isi_lido .= '<p><a href="'.base_url($item4->url).'">' . $item4->nama_file . '</a></p>'; 
	                }
	              }
	            }
	            // $lido = "<td rowspan='".$jml_lido."'>".$isi_lido."</td>";
	            $lido2 = $isi_lido;
	          }
	        
	          $nilai = null;
	          $nilai_tmp = $this->db->get_where('detilpenilaian', array('butirpenilaian_id' => $item2->id_butir_penilaian, 'penilaian_id' => $data['penilaian_id']->id))->row();
	          if ($nilai_tmp != null) {
	            $nilai = $nilai_tmp->nilai;
	          }

			$this->excel->getActiveSheet()->setCellValue('A' . $a, $standar);
			$this->excel->getActiveSheet()->setCellValue('B' . $a, $substandar);
			$this->excel->getActiveSheet()->setCellValue('C' . $a, $butir);
			$this->excel->getActiveSheet()->setCellValue('D' . $a, $item2->nomor_butirpenilaian . ' ' . $item2->deskripsi);
			$this->excel->getActiveSheet()->setCellValue('E' . $a, $item2->bobot);
			$this->excel->getActiveSheet()->setCellValue('F' . $a, $nilai);
			$this->excel->getActiveSheet()->setCellValue('G' . $a, $lido2);

	          $id_standar = $item2->id_standar; $id_substandar = $item2->id_substandar; $id_butir = $item2->id_butir;
	          $i++; $a++;
	      }
		
		}
		$filename='test.xlsx'; 
		header('Content-Type: application/vnd.ms-excel'); 
		header('Content-Disposition: attachment;filename="'.$filename.'"'); 
		header('Cache-Control: max-age=0'); 
		
		$objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel2007');  
		
		$objWriter->save('php://output');
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokumen extends CI_Controller {
	function __construct(){
		parent::__construct();

		if ($this->session->login != true) {
			redirect(base_url('logout'));
		}

		$this->load->model('m_dokumen');
	}

	function index($id) {
		$data['isi'] = "dokumen/index";
		$data['data']['pengajuan'] = $this->db->get_where('pengajuan', array("id" => $id))->row();
		$data['data']['standar'] = $this->m_dokumen->ambil_standar($data['data']['pengajuan']->tipeversi_id);
		// var_dump($data); exit();
		
		$this->load->view("template/template", $data);
	}

	function hapus($id_listdokumen, $id_dokumen, $tab) {
		// $data['isi'] = "dokumen/index";
		// $data['data']['pengajuan'] = $this->db->get_where('pengajuan', array("id" => $id))->row();
		// $data['data']['standar'] = $this->m_dokumen->ambil_standar($data['data']['pengajuan']->tipeversi_id);
		// // var_dump($data); exit();
		
		// $this->load->view("template/template", $data);

		$where['id'] = $id_listdokumen;

		$link = $this->db->get_where('dokumen', $where)->row()->url;

		$this->db->delete('dokumen', $where);

		unlink($link);

		redirect(base_url('dokumen/index/' . $id_dokumen . '?tab=' . $tab));
	}

	function upload() {
		$id_pengajuan = $this->input->post('id_pengajuan');
		$pengajuan = $this->m_dokumen->ambil_pengajuan($id_pengajuan);
		$list_dokumen = $this->m_dokumen->ambil_listdokumen($pengajuan->tipeversi_id);
		// var_dump($list_dokumen); exit();
		$tipeversi = $this->m_dokumen->ambil_tipeversi($pengajuan->tipeversi_id);
		// $user = $this->m_dokumen->ambil_user($pengajuan->user_id);
		$prodi = $this->db->get_where('prodi', array('id' => $pengajuan->prodi_id))->row();
		$dokumen = $_FILES['dokumen'];

		foreach ($list_dokumen as $item) {
			if ($dokumen['size'][$item->id_listdokumen] != 0){
				
				if ($prodi->id != 0) {
					$fakultas = $this->m_dokumen->ambil_fakultas($prodi->fakultas_id);
					$awal = $fakultas->kode . '/' . $prodi->kode; 
				} elseif ($user->id == 0) {
					$awal = 'univ'; 
				} else {
					$awal = "ERROR !!!";
				}

				// echo 'upload'
				// 	. '/' . $awal
				// 	. '/' . $pengajuan->tahun_borang 
				// 	. '/' . $this->db->get_where('versi', array("id" => $tipeversi->versi_id))->row()->nama
				// 	. '/' . $tipeversi->tipe 
				// 	. '/standar_' . $item->nomor_standar 
				// 	. '/substandar_' . $item->nomor_substandar
				// 	. '/butir_' . $item->nomor_butir . '/';
				// 	exit();

				@mkdir(
					'upload'
					. '/' . $awal
					. '/' . $pengajuan->tahun_borang 
					. '/' . $this->db->get_where('versi', array("id" => $tipeversi->versi_id))->row()->nama
					. '/' . $tipeversi->tipe 
					. '/standar_' . $item->nomor_standar 
					. '/substandar_' . $item->nomor_substandar
					. '/butir_' . $item->nomor_butir . '/'
				, 0755, true);
				$cek_dokumen = $this->m_dokumen->cek_dokumen($item->id_listdokumen, $pengajuan->id);
				if ($cek_dokumen != null) {
					$this->m_dokumen->hapus_dokumen($item->id_listdokumen, $pengajuan->id);
					unlink($cek_dokumen->url);
				} 
				
				$dokumen_upload = $this->m_dokumen->tambah_dokumen(
					'_' . $dokumen['name'][$item->id_listdokumen],
					$dokumen['name'][$item->id_listdokumen],
					$dokumen['type'][$item->id_listdokumen],
					'upload'
					. '/' . $awal
					. '/' . $pengajuan->tahun_borang 
					. '/' . $this->db->get_where('versi', array("id" => $tipeversi->versi_id))->row()->nama
					. '/' . $tipeversi->tipe 
					. '/standar_' . $item->nomor_standar 
					. '/substandar_' . $item->nomor_substandar
					. '/butir_' . $item->nomor_butir . '/'
					. '/',
					$item->id_listdokumen,
					$pengajuan->id
				);	

				move_uploaded_file($dokumen['tmp_name'][$item->id_listdokumen], $dokumen_upload->url);
			}
		}
		redirect(base_url('dokumen/index/'.$pengajuan->id.'?tab='.$this->input->post('last_tab')));
	}

}

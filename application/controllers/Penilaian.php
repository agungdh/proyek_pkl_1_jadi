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
}

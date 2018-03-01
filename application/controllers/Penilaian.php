<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_penilaian');	
		$this->load->library('pustaka');	
	}

	function index() {
		$data['isi'] = "penilaian/index";
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan();

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
		$data['data']['standar'] = $this->m_penilaian->ambil_standar($data['data']['pengajuan']->versi_id);

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

		redirect(base_url('penilaian/nilai/'.$id_pengajuan));
	}
}

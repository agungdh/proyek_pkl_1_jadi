<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Standar extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_standar');	
	}

	function index() {
		$data['isi'] = "standar/index";
		$data['data']['standar'] = $this->m_standar->ambil_standar();

		$this->load->view("template/template", $data);
	}

	function tambah() {
		$data['isi'] = "standar/tambah";
		$data['data']['data_versi'] = $this->m_standar->ambil_versi();

		$this->load->view("template/template", $data);
	}

	function aksi_tambah() {
		$this->m_standar->tambah_standar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('id_versi')
		);

		redirect(base_url('standar'));
	}

	function ubah($id_standar) {
		$data['isi'] = "standar/ubah";
		$data['data']['data_standar'] = $this->m_standar->ambil_standar_id($id_standar);
		$data['data']['data_versi'] = $this->m_standar->ambil_versi();

		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$this->m_standar->ubah_standar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('id_versi'),
			$this->input->post('id')
		);
		
		redirect(base_url('standar'));
	}

	function aksi_hapus($id_standar) {
		$this->m_standar->hapus_standar(
			$id_standar
		);

		redirect(base_url('standar'));
	}

}

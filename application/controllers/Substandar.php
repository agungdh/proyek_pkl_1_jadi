<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Substandar extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_substandar');	
	}

	function index() {
		$data['isi'] = "substandar/index";
		$data['data']['substandar'] = $this->m_substandar->ambil_substandar();

		$this->load->view("template/template", $data);
	}

	function tambah() {
		$data['isi'] = "substandar/tambah";
		$data['data']['data_versi'] = $this->m_substandar->ambil_versi();

		$this->load->view("template/template", $data);
	}

	function aksi_tambah() {
		$this->m_substandar->tambah_substandar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('id_versi')
		);

		redirect(base_url('substandar'));
	}

	function ubah($id_substandar) {
		$data['isi'] = "substandar/ubah";
		$data['data']['data_substandar'] = $this->m_substandar->ambil_substandar_id($id_substandar);
		$data['data']['data_versi'] = $this->m_substandar->ambil_versi();

		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$this->m_substandar->ubah_substandar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('id_versi'),
			$this->input->post('id')
		);
		
		redirect(base_url('substandar'));
	}

	function aksi_hapus($id_substandar) {
		$this->m_substandar->hapus_substandar(
			$id_substandar
		);

		redirect(base_url('substandar'));
	}

}

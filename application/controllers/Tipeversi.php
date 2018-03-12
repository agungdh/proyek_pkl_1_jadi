<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tipeversi extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_tipeversi');	
	}

	function index($id_versi){
		$data['isi'] = "tipeversi/index";
		$data['data']['versi'] = $this->m_tipeversi->ambil_versi_id($id_versi);
		$data['data']['tipeversi'] = $this->m_tipeversi->ambil_tipeversi($id_versi);
		$this->load->view("template/template", $data);
	}

	function tambah($id_versi){
		$data['isi'] = "tipeversi/tambah";
		$data['data']['versi'] = $this->m_tipeversi->ambil_versi_id($id_versi);
		$this->load->view("template/template",$data);
	}

	function aksi_tambah($id_versi){
		$this->m_tipeversi->tambah_type(
			$this->input->post('type'),
			$id_versi
		);
		redirect('tipeversi');
	}

	function ubah($id){
		$data['isi'] = "tipeversi/ubah";
		$data['data']['tipeversi'] = $this->m_tipeversi->ambil_data_type($id);
		$this->load->view("template/template", $data);
	}

	function aksi_ubah(){
		$this->m_tipeversi->ubah_type(
			$this->input->post('type'),
			$this->input->post('id')
		);
		redirect('tipeversi');
	}

	function aksi_hapus($id){
		$this->m_tipeversi->aksi_hapus($id);
		redirect('tipeversi');
	}


}
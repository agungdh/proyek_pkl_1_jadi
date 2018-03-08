<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Type_dokumen extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_type');	
	}

	function index(){
		$data['isi'] = "type/index";
		$data['data']['type'] = $this->m_type->ambil_type();
		$this->load->view("template/template", $data);
	}

	function tambah(){
		$data['isi'] = "type/tambah";
		$this->load->view("template/template",$data);
	}

	function aksi_tambah(){
		$this->m_type->tambah_type(
			$this->input->post('type')
		);
		redirect('Type_dokumen');
	}

	function ubah($id){
		$data['isi'] = "type/ubah";
		$data['data']['type'] = $this->m_type->ambil_data_type($id);
		$this->load->view("template/template", $data);
	}

	function aksi_ubah(){
		$this->m_type->ubah_type(
			$this->input->post('type'),
			$this->input->post('id')
		);
		redirect('Type_dokumen');
	}

	function aksi_hapus($id){
		$this->m_type->aksi_hapus($id);
		redirect('Type_dokumen');
	}

}
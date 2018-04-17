<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tipeversi extends CI_Controller {
	function __construct(){
		parent::__construct();

		if ($this->session->login != true) {
			redirect(base_url('logout'));
		}

		if ($this->session->level != 1) {
			redirect(base_url('logout'));
		}

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
		redirect('tipeversi/index/'.$id_versi);

	}

	function ubah($id){
		$data['isi'] = "tipeversi/ubah";
		$data['data']['tipeversi'] = $this->m_tipeversi->ambil_data_type($id);
		$this->load->view("template/template", $data);
	}

	function aksi_ubah($id){
		$this->m_tipeversi->ubah_type(
			$this->input->post('type'),
			$this->input->post('id')
		);

		//print_r($id);
		redirect('tipeversi/index/'.$id);
	}

	function aksi_hapus($id_tipeversi) {
		$tipeversi = $this->m_tipeversi->ambil_data_versi_dari_id_tipeversi($id_tipeversi);

		$this->m_tipeversi->aksi_hapus(
			$id_tipeversi
		);

		redirect(base_url('tipeversi/index/'.$tipeversi->id_versi));
	}


}
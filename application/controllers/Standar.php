<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Standar extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_standar');	
	}

	function index($id_tipeversi) {
		$data['isi'] = "standar/index";
		$data['data']['tipeversi'] = $this->m_standar->ambil_tipeversi_id($id_tipeversi);
		$data['data']['standar'] = $this->m_standar->ambil_standar($id_tipeversi);
		$data['data']['versi'] = $this->m_standar->ambil_versi_id($data['data']['tipeversi']->versi_id);
		$this->load->view("template/template", $data);
	}

	function tambah($id_tipeversi) {
		$data['isi'] = "standar/tambah";
		$data['data']['tipeversi'] = $this->m_standar->ambil_tipeversi_id($id_tipeversi);

		$this->load->view("template/template", $data);
	}

	function aksi_tambah($id_tipeversi) {
		$this->m_standar->tambah_standar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$id_tipeversi
		);

		redirect(base_url('standar/index/'.$id_tipeversi));
	}

	function ubah($id_standar) {
		$data['isi'] = "standar/ubah";
		$data['data']['data_standar'] = $this->m_standar->ambil_standar_id($id_standar);
		$data['data']['tipeversi'] = $this->m_standar->ambil_tipeversi_id($data['data']['data_standar']->tipeversi_id);

		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$tipeversi = $this->m_standar->ambil_data_tipeversi_dari_id_standar($this->input->post('id'));
		
		$this->m_standar->ubah_standar(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('id')
		);
		
		redirect(base_url('standar/index/'.$tipeversi->tipeversi_id));
	}

	function aksi_hapus($id_standar) {
		$tipeversi = $this->m_standar->ambil_data_tipeversi_dari_id_standar($id_standar);

		$this->m_standar->hapus_standar(
			$id_standar
		);

		redirect(base_url('standar/index/'.$tipeversi->tipeversi_id));
	}

}

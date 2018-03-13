<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Butirpenilaian extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_butirpenilaian');	
		$this->load->model('m_listdokumen');	
		$this->load->library('pustaka');	
	}
//
// asfasfasf
	function index($id_butir) {
		$data['isi'] = "butirpenilaian/index";
		$data['data']['butir'] = $this->m_listdokumen->ambil_butir_id($id_butir);
		$data['data']['substandar'] = $this->m_listdokumen->ambil_substandar_id($data['data']['butir']->substandar_id);
		$data['data']['standar'] = $this->m_listdokumen->ambil_standar_id($data['data']['substandar']->standar_id);
		$data['data']['tipeversi'] = $this->m_listdokumen->ambil_tipeversi_id($data['data']['standar']->tipeversi_id);
		$data['data']['versi'] = $this->m_listdokumen->ambil_versi_id($data['data']['tipeversi']->versi_id);
		$data['data']['listdokumen'] = $this->m_listdokumen->ambil_listdokumen($id_butir);
		$data['data']['butirpenilaian'] = $this->m_butirpenilaian->ambil_butirpenilaian($id_butir);
		$this->load->view("template/template", $data);
	}

	function tambah($id_butir) {
		$data['isi'] = "butirpenilaian/tambah";
		$data['data']['butir'] = $this->m_butirpenilaian->ambil_butir_id($id_butir);

		$this->load->view("template/template", $data);
	}

	function aksi_tambah($id_butir) {
		$this->m_butirpenilaian->tambah_butirpenilaian(
			$this->input->post('nomor'),
			$this->input->post('deskripsi'),
			$this->input->post('bobot'),
			$id_butir
		);

		redirect(base_url('butirpenilaian/index/'.$id_butir));
	}

	function ubah($id_butirpenilaian) {
		$data['isi'] = "butirpenilaian/ubah";
		$data['data']['data_butirpenilaian'] = $this->m_butirpenilaian->ambil_butirpenilaian_id($id_butirpenilaian);
		$data['data']['butir'] = $this->m_butirpenilaian->ambil_butir_id($data['data']['data_butirpenilaian']->butir_id);
		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$versi = $this->m_butirpenilaian->ambil_data_butir_dari_id_butirpenilaian($this->input->post('id'));
		
		$this->m_butirpenilaian->ubah_butirpenilaian(
			$this->input->post('nomor'),
			$this->input->post('nama'),
			$this->input->post('bobot'),
			$this->input->post('id')
		);		
		redirect(base_url('butirpenilaian/index/'.$versi->id_butir));
	}

	function aksi_hapus($id_butirpenilaian) {
		$versi = $this->m_butirpenilaian->ambil_data_butir_dari_id_butirpenilaian($id_butirpenilaian);

		$this->m_butirpenilaian->hapus_butirpenilaian(
			$id_butirpenilaian
		);

		redirect(base_url('butirpenilaian/index/'.$versi->id_butir));
	}

}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuanborang extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengajuanborang');	
		$this->load->library('pustaka');
	}

	function index() {
		$data['isi'] = "pengajuanborang/index";
		$data['data']['pengajuanborang'] = $this->m_pengajuanborang->ambil_pengajuan($this->session->id);

		$this->load->view("template/template", $data);
	}

	function tambah() {
		$data['isi'] = "pengajuanborang/tambah";
		$data['data']['user'] = $this->m_pengajuanborang->ambil_user();
		$data['data']['tipeversi'] = $this->m_pengajuanborang->ambil_tipeversi();
		$this->load->view("template/template", $data);	
	}

	function aksi_tambah() {
		$this->m_pengajuanborang->tambah_pengajuan(
			$this->input->post('tanggal'),
			$this->input->post('user'),
			$this->input->post('tipe'),
			$this->input->post('tahun')
		);

		redirect(base_url('pengajuanborang'));
	}

	function ubah($id_pengajuan) {
		$data['isi'] = "pengajuanborang/ubah";
		$data['data']['user'] = $this->m_pengajuanborang->ambil_user();
		$data['data']['tipeversi'] = $this->m_pengajuanborang->ambil_tipeversi();
		$data['data']['pengajuan'] = $this->m_pengajuanborang->ambil_pengajuan_id($id_pengajuan);

		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$this->m_pengajuanborang->ubah_pengajuan(
			$this->input->post('tanggal'),
			$this->input->post('user'),
			$this->input->post('tipe'),
			$this->input->post('tahun'),
			$this->input->post('id')
		);

		redirect(base_url('pengajuanborang'));
	}

	function aksi_hapus($id) {
		$this->m_pengajuanborang->hapus_pengajuan(
			$id
		);

		redirect(base_url('pengajuanborang'));
	}

}

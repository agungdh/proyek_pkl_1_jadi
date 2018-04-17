<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	function __construct(){
		parent::__construct();

		if ($this->session->login != true) {
			redirect(base_url('logout'));
		}

		if ($this->session->level != 1) {
			redirect(base_url('logout'));
		}

		$this->load->model('m_user');	
	}

	function index() {
		$data['isi'] = "user/index";
		$data['data']['user'] = $this->m_user->ambil_user();

		$this->load->view("template/template", $data);
	}

	function tambah() {
		$data['isi'] = "user/tambah";
		$data['data']['prodi'] = $this->m_user->ambil_prodi();

		$this->load->view("template/template", $data);	
	}

	function aksi_tambah() {
		$id_prodi = $this->input->post('prodi') != null ? $this->input->post('prodi') : '0';
		$this->m_user->tambah_user(
			$this->input->post('username'),
			hash('sha512', $this->input->post('password')),
			$this->input->post('level'),
			$id_prodi
		);

		redirect(base_url('user'));
	}

	function ubah($id_user) {
		$data['isi'] = "user/ubah";
		$data['data']['user'] = $this->m_user->ambil_user_id($id_user);

		$this->load->view("template/template", $data);
	}

	function aksi_ubah() {
		$this->m_user->ubah_user(
			hash("sha512", $this->input->post('password')),
			$this->input->post('id')
		);

		redirect(base_url('user'));
	}

	function aksi_hapus($id) {
		$this->m_user->hapus_user(
			$id
		);

		redirect(base_url('user'));
	}

}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_welcome');
		$this->load->model('m_pengajuan');
		$this->load->model('m_penilaian');	
		$this->load->model('m_dokumen');	
		$this->load->library('pustaka');
	}

	function index() {
		$this->session->login != true ? $this->load->view("template/halaman_login") : $this->load->view('template/template',array("isi" => "template/halaman_utama"));;
	}

	function penilaian($id_pengajuan) {
		$data['isi'] = "penilaian/welcome";
		$data['data']['penilaian'] = $this->m_penilaian->ambil_penilaian($id_pengajuan);
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($id_pengajuan);

		$this->load->view("template/template", $data);
	}

	function ubah($id_penilaian) {
		$data['isi'] = "penilaian/welcome_ubah";
		$data['data']['penilaian_id'] = $this->m_penilaian->ambil_penilaian_id($id_penilaian);
		$data['data']['penilaian'] = $this->m_penilaian->ambil_penilaian($data['data']['penilaian_id']->pengajuan_id);
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan_id($data['data']['penilaian_id']->pengajuan_id);
		$data['data']['standar'] = $this->m_penilaian->ambil_standar($data['data']['pengajuan']->id_tipeversi);

		$this->load->view("template/template", $data);
	}

	function aksi_login() {
		$data_user = $this->m_welcome->cek_login($this->input->post('username'), hash('sha512', $this->input->post('password')));
		if ($data_user != null) {
			
			$array_data_user = array(
				'id'  => $data_user->id,
				'username'  => $data_user->username,
				'level'  => $data_user->level,
				'prodi_id'  => $data_user->prodi_id,
				'login'  => true
			);

			$this->session->set_userdata($array_data_user);

			redirect(base_url());
		} else {
			redirect(base_url('?error=1'));
		}
	}
}

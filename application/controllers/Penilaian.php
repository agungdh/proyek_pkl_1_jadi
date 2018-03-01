<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_penilaian');	
	}

	function index() {
		$data['isi'] = "penilaian/index";
		$data['data']['pengajuan'] = $this->m_penilaian->ambil_pengajuan();

		$this->load->view("template/template", $data);
	}
}

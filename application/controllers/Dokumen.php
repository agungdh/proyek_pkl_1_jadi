<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokumen extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_dokumen');
	}

	function index($id) {
		$data['isi'] = "dokumen/index";
		$data['data']['pengajuan'] = $this->m_dokumen->ambil_pengajuan($id);
		$data['data']['standar'] = $this->m_dokumen->ambil_standar($data['data']['pengajuan']->versi_id);
		
		$this->load->view("template/template", $data);
	}

}

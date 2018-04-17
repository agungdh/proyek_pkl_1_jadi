<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian2 extends CI_Controller{

	function __construct(){
		parent::__construct();

		if ($this->session->login != true) {
			redirect(base_url('logout'));
		}

		if ($this->session->level != 1) {
			redirect(base_url('logout'));
		}

	}

	function index(){
		$data['isi'] = "penilaian2/index";

		$this->load->view("template/template",$data);
	}
}
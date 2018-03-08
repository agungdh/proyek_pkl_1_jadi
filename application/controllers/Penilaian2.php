<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian2 extends CI_Controller{

	function __construct(){
		parent::__construct();
	}

	function index(){
		$data['isi'] = "penilaian2/index";

		$this->load->view("template/template",$data);
	}
}
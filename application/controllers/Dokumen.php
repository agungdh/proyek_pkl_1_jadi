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

	function upload() {
		$id_pengajuan = $this->input->post('id_pengajuan');
		$pengajuan = $this->m_dokumen->ambil_pengajuan($id_pengajuan);
		$list_dokumen = $this->m_dokumen->ambil_listdokumen($pengajuan->versi_id);
		$dokumen = $_FILES['dokumen'];

		foreach ($list_dokumen as $item) {
			if ($dokumen['size'][$item->id_listdokumen] != 0){
				// echo $item->id_listdokumen . '<br>';
				echo 'nama = ' . 'id' . '_' . $dokumen['name'][$item->id_listdokumen] . '<br>';
				echo 'nama_asli = ' . $dokumen['name'][$item->id_listdokumen] . '<br>';
				echo 'mime = ' . $dokumen['type'][$item->id_listdokumen] . '<br>';
				echo 'url = ' . 'standar_' . $item->nomor_standar 
						. '/substandar_' . $item->nomor_substandar
						. '/butir_' . $item->nomor_butir
						. '/butir_' . $item->nomor_butir
						. '<br>';
				echo 'listdokumen = ' . $item->id_listdokumen . '<br>';
				echo 'pengajuan = ' . $pengajuan->id . '<br>';
				// echo 'tmp_name = ' . $dokumen['tmp_name'][$item->id_listdokumen] . '<br>';
				// echo 'error = ' . $dokumen['error'][$item->id_listdokumen] . '<br>';
				// echo 'size = ' . $dokumen['size'][$item->id_listdokumen] . '<br><br>';
				echo '<hr>';
			}
		}

	}

}

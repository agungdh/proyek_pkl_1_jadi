<?php
class M_dokumen extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_pengajuan($id_pengajuan){
		$sql = "SELECT *
				FROM pengajuan
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_pengajuan));
		$row = $query->row();

		return $row;
	}

	function ambil_standar($id_versi){
		$sql = "SELECT *
				FROM standar
				WHERE versi_id = ?
				ORDER BY nomor";
		$query = $this->db->query($sql, array($id_versi));
		$row = $query->result();

		return $row;
	}

	function ambil_detail($id_standar){
		$sql = "SELECT *
				FROM v_pengajuan_dokumen
				WHERE id_standar = ?
				ORDER BY nomor_standar, nomor_substandar, nomor_butir, id_listdokumen";
		$query = $this->db->query($sql, array($id_standar));
		$row = $query->result();

		return $row;
	}

}
?>
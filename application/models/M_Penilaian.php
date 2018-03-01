<?php
class M_penilaian extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function tambah_penilaian($tanggal, $id_pengajuan){
		$sql = "INSERT INTO penilaian
				SET tanggal = ?,
				pengajuan_id = ?";
		$query = $this->db->query($sql, array($tanggal, $id_pengajuan));
		
		return $this->db->insert_id();
	}

	function tambah_detil_penilaian($id_penilaian, $id_butir, $nilai){
		$sql = "INSERT INTO detilpenilaian
				SET penilaian_id = ?,
				butir_id = ?,
				nilai = ?";
		$query = $this->db->query($sql, array($id_penilaian, $id_butir, $nilai));
	}

	function ambil_pengajuan(){
		$sql = "SELECT *
				FROM v_pengajuan";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_penilaian_id_pengajuan($id_pengajuan){
		$sql = "SELECT *
				FROM penilaian
				WHERE pengajuan_id = ?";
		$query = $this->db->query($sql, array($id_pengajuan));
		$row = $query->result();

		return $row;
	}

	function ambil_pengajuan_id($id_pengajuan){
		$sql = "SELECT *
				FROM v_pengajuan
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_pengajuan));
		$row = $query->row();

		return $row;
	}

	function ambil_data_user($id_user){
		$sql = "SELECT *
				FROM user
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_user));
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

	function ambil_dokumen($id_pengajuan, $id_listdokumen){
		$sql = "SELECT *
				FROM dokumen
				WHERE pengajuan_id = ?
				AND listdokumen_id = ?";
		$query = $this->db->query($sql, array($id_pengajuan, $id_listdokumen));
		$row = $query->row();

		return $row;
	}



}
?>
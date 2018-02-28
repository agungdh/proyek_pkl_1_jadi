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

	function ambil_user($id_user){
		$sql = "SELECT *
				FROM user
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_user));
		$row = $query->row();

		return $row;
	}

	function ambil_prodi($id_prodi){
		$sql = "SELECT *
				FROM prodi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_prodi));
		$row = $query->row();

		return $row;
	}

	function ambil_fakultas($id_fakultas){
		$sql = "SELECT *
				FROM fakultas
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_fakultas));
		$row = $query->row();

		return $row;
	}

	function ambil_versi($id_versi){
		$sql = "SELECT *
				FROM versi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_versi));
		$row = $query->row();

		return $row;
	}

	function ambil_listdokumen($id_versi){
		$sql = "SELECT *
				FROM v_pengajuan_dokumen
				WHERE versi_id = ?";
		$query = $this->db->query($sql, array($id_versi));
		$row = $query->result();

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

	function ambil_dokumen($id_pengajuan, $id_listdokumen){
		$sql = "SELECT *
				FROM dokumen
				WHERE pengajuan_id = ?
				AND listdokumen_id = ?";
		$query = $this->db->query($sql, array($id_pengajuan, $id_listdokumen));
		$row = $query->row();

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
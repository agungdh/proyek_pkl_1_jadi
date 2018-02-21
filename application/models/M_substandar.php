<?php
class M_substandar extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_substandar(){
		$sql = "SELECT *
				FROM v_substandar";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_versi(){
		$sql = "SELECT *
				FROM versi";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_substandar_id($id_substandar){
		$sql = "SELECT *
				FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_substandar));
		$row = $query->row();

		return $row;
	}

	function tambah_substandar($nomor, $nama, $id_versi){
		$sql = "INSERT INTO standar
				SET nomor = ?,
				nama = ?,
				versi_id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id_versi));
	}	

	function ubah_substandar($nomor, $nama, $id_versi, $id){
		$sql = "UPDATE standar
				SET nomor = ?,
				nama = ?,
				versi_id = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id_versi, $id));
	}	

	function hapus_substandar($id){
		$sql = "DELETE FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}	

}
?>
<?php
class M_standar extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_standar(){
		$sql = "SELECT *
				FROM v_standar";
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

	function ambil_standar_id($id_standar){
		$sql = "SELECT *
				FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_standar));
		$row = $query->row();

		return $row;
	}

	function tambah_standar($nomor, $nama, $id_versi){
		$sql = "INSERT INTO standar
				SET nomor = ?,
				nama = ?,
				versi_id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id_versi));
	}	

	function ubah_standar($nomor, $nama, $id_versi, $id){
		$sql = "UPDATE standar
				SET nomor = ?,
				nama = ?,
				versi_id = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id_versi, $id));
	}	

	function hapus_standar($id){
		$sql = "DELETE FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}	

}
?>
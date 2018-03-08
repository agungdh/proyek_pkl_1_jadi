<?php
class M_standar extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_versi_id($id_tipeversi){
		$sql = "SELECT *
				FROM versi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_tipeversi));
		$row = $query->row();

		return $row;
	}

	function ambil_data_tipeversi_dari_id_standar($id_standar){
		$sql = "SELECT *
				FROM v_standar
				WHERE id_standar = ?";
		$query = $this->db->query($sql, array($id_standar));
		$row = $query->row();

		return $row;
	}

	function ambil_standar($id_tipeversi){
		$sql = "SELECT *
				FROM standar
				WHERE tipeversi_id = ?";
		$query = $this->db->query($sql, array($id_tipeversi));
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

	function ambil_tipeversi_id($id_tipeversi){
		$sql = "SELECT *
				FROM tipeversi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_tipeversi));
		$row = $query->row();

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

	function tambah_standar($nomor, $nama, $id_tipeversi){
		$sql = "INSERT INTO standar
				SET nomor = ?,
				nama = ?,
				tipeversi_id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id_tipeversi));
	}	

	function ubah_standar($nomor, $nama, $id){
		$sql = "UPDATE standar
				SET nomor = ?,
				nama = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $id));
	}	

	function hapus_standar($id){
		$sql = "DELETE FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}	

}
?>
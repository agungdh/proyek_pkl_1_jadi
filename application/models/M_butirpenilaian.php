<?php
class M_butirpenilaian extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_butir_id($id_butir){
		$sql = "SELECT *
				FROM butir
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_butir));
		$row = $query->row();

		return $row;
	}

	function ambil_butirpenilaian($id_butir){
		$sql = "SELECT *
				FROM butirpenilaian
				WHERE butir_id = ?";
		$query = $this->db->query($sql, array($id_butir));
		$row = $query->result();

		return $row;
	}

	function ambil_butirpenilaian_id($id_butir){
		$sql = "SELECT *
				FROM butirpenilaian
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_butir));
		$row = $query->row();

		return $row;
	}

	function tambah_butirpenilaian($nomor, $deskripsi, $bobot, $id_butir){
		$sql = "INSERT INTO butirpenilaian
				SET nomor_butir = ?,
				deskripsi = ?,
				bobot = ?,
				butir_id = ?";
		$query = $this->db->query($sql, array($nomor, $deskripsi, $bobot, $id_butir));
	}

	function ambil_data_butir_dari_id_butirpenilaian($id_butirpenilaian){
		$sql = "SELECT *
				FROM v_butirbutir
				WHERE id_butirpenilaian = ?";
		$query = $this->db->query($sql, array($id_butirpenilaian));
		$row = $query->row();

		return $row;
	}

	function ubah_butirpenilaian($nomor, $nama, $bobot, $id){
		$sql = "UPDATE butirpenilaian
				SET nomor_butir = ?,
				deskripsi = ?,
				bobot = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($nomor, $nama, $bobot, $id));
	}	

	function hapus_butirpenilaian($id){
		$sql = "DELETE FROM butirpenilaian
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}		




}
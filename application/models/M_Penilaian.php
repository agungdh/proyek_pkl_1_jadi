<?php
class M_penilaian extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_pengajuan(){
		$sql = "SELECT *
				FROM v_pengajuan";
		$query = $this->db->query($sql, array());
		$row = $query->result();

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

}
?>
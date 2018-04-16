<?php 
if ($this->session->level != 1) {
  redirect(base_url('pengajuanborang'));
}
?>

<script type="text/javascript" language="javascript" >
  var dTable;
  $(document).ready(function() {
    dTable = $('#lookup').DataTable({
      responsive: true
    });
  });
</script>

<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>DATA PENGAJUAN</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>TANGGAL</th>
                    <th>VERSI</th>
                    <th>TIPE VERSI</th>
                    <th>TAHUN BORANG</th>
                    <th>PRODI</th>
                    <th>FAKULTAS</th>
                    <th>PERSENTASE DOKUMEN</th>
        </tr>
      </thead>

      <tbody style="cursor: pointer;">
        <?php
        foreach ($this->db->get('pengajuan')->result() as $item) {
          $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $item->tipeversi_id))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $item->id))->result());
          
          // $persentase = $jumlah_dokumen / $jumlah_total_dokumen * 100;
          $persentase = $jumlah_dokumen != 0 ? $jumlah_dokumen / $jumlah_total_dokumen * 100 : 0;

          $prodi = $this->m_universal->get_id('prodi', $item->prodi_id);
          // var_dump($prodi);
          if ($prodi == null) {
            // $tblUser = $user->username;
            $prodi = $fakultas = null;
            $prodi = "UNIVERSITAS";
          } else {
            $prodi = $this->m_universal->get_id('prodi', $item->prodi_id);
            $fakultas = $this->m_universal->get_id('fakultas', $prodi->fakultas_id);
            // $tblUser = $user->username . ' (' . $fakultas->nama . ' | ' . $prodi->nama . ')';
            $prodi = $prodi->nama;
            $fakultas = $fakultas->nama;
          }
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row()->versi_id))->row();
          $windowLocation = base_url('welcome/penilaian/' . $item->id);
          ?>
          <tr onclick="window.location = '<?php echo $windowLocation; ?>'">
            <th><?php echo $this->pustaka->tanggal_indo($item->tanggal); ?></th>
            <th><?php echo $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun; ?></th>
            <th><?php echo $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row()->tipe; ?></th>
            <th><?php echo $item->tahun_borang; ?></th>
            <th><?php echo $prodi; ?></th>
            <th><?php echo $fakultas; ?></th>
            <th><?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?></th>
          </tr>
          <?php
        }
        ?>
      </tbody>
      
    </table>
  </div><!-- /.boxbody -->
</div><!-- /.box -->

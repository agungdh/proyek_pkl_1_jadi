<?php 
// var_dump($data['versi_borang']);
// exit();
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
    <h4><strong><font color=blue>DATA PENILAIAN</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">

      <h5><strong>

        <a href='<?php echo base_url("pengajuan"); ?>'>
          <font color=blue>
            <u>Pengajuan:</u></a>
          </font><br>
          <?php
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $data['pengajuan']->id_tipeversi))->row()->versi_id))->row();
          $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $data['pengajuan']->id_tipeversi))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $data['pengajuan']->id_pengajuan))->result());
          $persentase = $jumlah_dokumen / $jumlah_total_dokumen * 100;
          ?>
          Tanggal Pengajuan: <?php echo $this->pustaka->tanggal_indo($data['pengajuan']->tgl_pengajuan); ?><br>
          Versi: <?php echo $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun; ?><br>
          Tipe Versi: <?php echo $data['pengajuan']->tipeversi; ?><br>
          Tahun Borang: <?php echo $data['pengajuan']->tahun_borang; ?><br>
          <?php
          $user = $this->m_universal->get_id('user', $data['pengajuan']->id_user);
          $prodi = $this->m_universal->get_id('prodi', $user->prodi_id);
          if ($prodi != null) {
            $fakultas = $this->m_universal->get_id('fakultas', $prodi->fakultas_id);
            $tblUser = $user->username . ' (' . $fakultas->nama . ' | ' . $prodi->nama . ')';
          } else {
            $tblUser = $user->username;
          }
          ?>
          User: <?php echo $tblUser; ?><br>
          Upload: <?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?><br>
        <br>
        

      </strong></h5>

      <a href='<?php echo base_url("penilaian/tambah/".$data['pengajuan']->id_pengajuan); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Penilaian</button></a>


    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
            <th>TANGGAL</th>
            <th>NILAI</th>
            <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
            <?php
            foreach ($data['penilaian'] as $item) {
              ?>
              <tr>
                <th><?php echo $this->pustaka->tanggal_indo($item->tanggal); ?></th>
                <th><?php echo '200'; ?></th>
                <th>
                  <a class="btn btn-info" href="<?php echo base_url('penilaian/nilai/'.$item->id) ?>"><i class="fa fa-pencil"></i></a>
                </th>
              </tr>
              <?php
            }
            ?>
      </tbody>
      
    </table>
  </div><!-- /.boxbody -->
</div><!-- /.box -->
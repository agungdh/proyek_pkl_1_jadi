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
          Tanggal Pengajuan: <?php echo $this->pustaka->tanggal_indo($data['pengajuan']->tgl_pengajuan); ?><br>
          Tahun Borang: <?php echo $data['pengajuan']->tahun_borang; ?><br>
          Tipe: <?php echo $data['pengajuan']->tipeversi; ?><br>
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
        <br>
        

      </strong></h5>

      <a href='<?php echo base_url("standar/tambah/".$data['tipeversi']->id); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Penilaian</button></a>


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
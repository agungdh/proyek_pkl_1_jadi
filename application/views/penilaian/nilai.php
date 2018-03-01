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
        <a href='<?php echo base_url("penilaian"); ?>'>
          <font color=black>
            <u>Penilaian:</u>
          </a>
            <br>
            Tanggal = <?php echo $this->pustaka->tanggal_indo($data['pengajuan']->tanggal); ?> <br>
            Tahun Borang = <?php echo $data['pengajuan']->tahun_borang; ?> <br>
            Pengajuan = <?php echo $data['pengajuan']->nama . ' (' . $data['pengajuan']->tahun . ')'; ?> <br>
            </font>
      </strong></h5>

    <a href='<?php echo base_url("penilaian/tambah/".$data['pengajuan']->id); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Penilaian</button></a>
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
                <th>0</th>
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
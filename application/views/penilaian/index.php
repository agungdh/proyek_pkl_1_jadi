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

    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
            <th>TANGGAL</th>
            <th>USER</th>
            <th>VERSI</th>
            <th>TAHUN</th>
            <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
            <?php
            foreach ($data['pengajuan'] as $item) {
              ?>
              <tr>
                <th><?php echo $item->tanggal_penilaian; ?></th>
                <th><?php echo $item->level;  ?></th>
                <th><?php echo $item->nama_versi; ?></th>
                <th><?php echo $item->tahun_borang; ?></th>
                <th>
                  <a class="btn btn-info" href="<?php echo base_url('penilaian/nilai/'.$item->id_penilaian) ?>"><i class="fa fa-pencil"></i></a>
                </th>
              </tr>
              <?php
            }
            ?>
      </tbody>
      
    </table>
  </div><!-- /.boxbody -->
</div><!-- /.box -->
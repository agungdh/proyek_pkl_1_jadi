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
    <h4><strong><font color=blue>DATA SUBSTANDAR</font></strong></h4>
  </div><!-- /.box-header -->
 
    <div class="box-body">

    <div class="form-group">
      <h5><strong>

        <a href='<?php echo base_url("versi"); ?>'>
          <font color=blue>
            <u>Versi:</u>
          </a><?php echo $data['versi']->nama.' | '.$data['versi']->versi.' | '.$data['versi']->tahun; ?></font>
          <br>
        <a href='<?php echo base_url("tipeversi/index/" . $data['tipeversi']->versi_id); ?>'>
          <font color=black>
            <u>Tipe Versi:</u>
          </a><?php echo $data['tipeversi']->tipe; ?></font>
        
        <br>
        <a href="<?php echo base_url("standar/index/".$data['standar']->tipeversi_id); ?>">
          <font color=blue>
            <u>Standar:</u>
        </a><?php echo $data['standar']->nomor . ' ' . $data['standar']->nama; ?></font>
        
      </strong></h5>

      <a href='<?php echo base_url("substandar/tambah/".$data['standar']->id); ?>'><button class="btn btn-success">+ Substandar</button></a>
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>NOMOR</th>
                    <th width="700">NAMA</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['substandar'] as $item) {
          ?>
          <tr>
            <th><?php echo $item->nomor; ?></th>
            <th style="text-align: justify;"><?php echo $item->nama; ?></th>
              <th>
                <center>
                  <a class="btn btn-primary" href="<?php echo base_url('butir/index/'.$item->id) ?>"><i class="fa fa-share"></i> Butir</a>
                  <a class="btn btn-info" href="<?php echo base_url('substandar/ubah/'.$item->id) ?>"><i class="fa fa-pencil"></i></a>
                  <a class="btn btn-danger" onclick="hapus('<?php echo $item->id; ?>')"><i class="fa fa-trash"></i></a> 
                </center>
              </th>
          </tr>
          <?php
        }
        ?>
      </tbody>
      
    </table>
  </div><!-- /.boxbody -->
</div><!-- /.box -->

<script type="text/javascript">
function hapus(id) {
  if (confirm("Yakin hapus ?")) {
    window.location = "<?php echo base_url('substandar/aksi_hapus/'); ?>" + id;
  }
}
</script>

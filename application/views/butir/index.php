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
    <h4><strong><font color=blue>DATA BUTIR</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
      <h5><strong><font color=blue><?php echo 'Substandar : ' . $data['substandar']->nomor . ' | ' . $data['substandar']->nama; ?></font></strong></h5>

      <div class="btn-group">
        <button type="button" class="btn btn-warning"><i class="fa fa-mail-reply-all"></i> <a href='<?php echo base_url("substandar/index/".$data['substandar']->standar_id); ?>' style="color: white;"> Substandar </a></button>
        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
          <span class="caret"></span>
          <span class="sr-only">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu" role="menu">
          <li><a href='<?php echo base_url("standar/index/".$data['standar']->versi_id); ?>'> Standar</a></li>
          <li><a href='<?php echo base_url("versi"); ?>'> Versi</a></li>          
        </ul>
      </div>

      <a href='<?php echo base_url("butir/tambah/".$data['substandar']->id); ?>'><button class="btn btn-success pull-right"><i class="fa fa-plus"></i> Butir</button></a>
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>NOMOR</th>
                    <th>NAMA</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['butir'] as $item) {
          ?>
          <tr>
            <th><?php echo $item->nomor; ?></th>
            <th><?php echo $item->nama; ?></th>
              <th>
                <a class="btn btn-primary" href="<?php echo base_url('listdokumen/index/'.$item->id) ?>"> <i class="fa fa-share"></i> List Dokumen</a>
                <a class="btn btn-info" href="<?php echo base_url('butir/ubah/'.$item->id) ?>"> <i class="fa fa-pencil"></i></a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id; ?>')"> <i class="fa fa-trash"></i></a>
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
    window.location = "<?php echo base_url('butir/aksi_hapus/'); ?>" + id;
  }
}
</script>

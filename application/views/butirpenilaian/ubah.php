<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>UBAH BUTIR</font></strong></h4>
  </div><!-- /.box-header -->

  <!-- form start -->
  <form name="form" id="form" role="form" method="post" action="<?php echo base_url('butirpenilaian/aksi_ubah'); ?>">
    <div class="box-body">

    <input type="hidden" name="id" value="<?php echo $data['data_butirpenilaian']->id; ?>">

    <div class="form-group">
      <label for="substandar">Butir</label>
          <input readonly value="<?php echo $data['butir']->nomor . ' | ' . $data['butir']->nama;?>" required type="text" class="form-control" id="substandar" placeholder="Isi subStandar" name="butir">          
    </div> 

    <div class="form-group">
      <label for="nomor">Nomor</label>
          <input value="<?php echo $data['data_butirpenilaian']->nomor_butir; ?>" required type="text" class="form-control" id="nomor" placeholder="Isi Nomor" name="nomor">          
    </div>

    <div class="form-group">
      <label for="nama">Nama</label>
          <input value="<?php echo $data['data_butirpenilaian']->deskripsi; ?>" required type="text" class="form-control" id="nama" placeholder="Isi Nama" name="nama">          
    </div>

    <div class="form-group">
      <label for="nama">Bobot</label>
          <input value="<?php echo $data['data_butirpenilaian']->bobot; ?>" required type="text" class="form-control" id="nama" placeholder="Isi bobot" name="bobot">          
    </div>

    </div><!-- /.box-body -->

    <div class="box-footer">
      <input class="btn btn-success" name="proses" type="submit" value="Simpan Data" />
      <a href="<?php echo base_url('butirpenilaian/index/'.$data['butir']->id); ?>" class="btn btn-info">Batal</a>
    </div>
  </form>
</div><!-- /.box -->
<script type="text/javascript">
$(function () {
  $('.select2').select2()
});
</script>
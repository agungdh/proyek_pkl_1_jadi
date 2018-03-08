<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>UBAH PENGAJUAN</font></strong></h4>
  </div><!-- /.box-header -->

  <!-- form start -->
  <form name="form" id="form" role="form" method="post" action="<?php echo base_url('pengajuan/aksi_ubah'); ?>">
    <div class="box-body">

      <input type="hidden" name="id" value="<?php echo $data['pengajuan']->id; ?>">

    <div class="form-group">
      <label for="tanggal">Tanggal</label>
          <input required value="<?php echo $data['pengajuan']->tanggal; ?>" type="date" class="form-control" id="tanggal" placeholder="Isi Tanggal" name="tanggal">          
    </div>

    <div class="form-group">
      <label for="versi">Tipe Versi</label>
          <select id="tipe" class="form-control select2" name="tipe">
            <?php
            foreach ($data['tipeversi'] as $item) {
              if ($item->id_tipeversi == $data['pengajuan']->tipeversi_id) {
                ?>
                <option selected value="<?php echo $item->id_tipeversi; ?>"><?php echo $item->tipe.' | '.$item->nama.' | '.$item->tahun; ?></option>
                <?php
              } else {
                ?>
                <option value="<?php echo $item->id_tipeversi; ?>"><?php echo $item->tipe.' | '.$item->nama.' | '.$item->tahun; ?></option>
                <?php                
              }
            }
            ?>
          </select>          
    </div>

    <div class="form-group">
      <label for="versi">User</label>
          <select id="tipe" class="form-control select2" name="user">
            <?php
            foreach ($data['user'] as $item) {
              if ($item->id == $data['pengajuan']->user_id) {
                ?>
                <option selected value="<?php echo $item->id; ?>"><?php echo $item->username; ?></option>
                <?php
              } else {
                ?>
                <option value="<?php echo $item->id; ?>"><?php echo $item->username; ?></option>
                <?php                
              }
            }
            ?>
          </select>          
    </div>


    <div class="form-group">
      <label for="tahun">Tahun</label>
          <input required type="number" value="<?php echo $data['pengajuan']->tahun_borang; ?>" min="1900" max="2900" class="form-control" id="tahun" placeholder="Isi Tahun" name="tahun">          
    </div>

    </div><!-- /.box-body -->

    <div class="box-footer">
      <input class="btn btn-success" name="proses" type="submit" value="Simpan Data" />
      <a href="<?php echo base_url('pengajuan'); ?>" class="btn btn-info">Batal</a>
    </div>
  </form>
</div><!-- /.box -->

<script type="text/javascript">
$(function () {
  $('.select2').select2()
});
</script>
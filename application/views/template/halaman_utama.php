<?php 
if ($this->session->level != 1) {
  redirect(base_url('pengajuanborang'));
}
?>

<script type="text/javascript" language="javascript" >
  // var dTable;
  // $(document).ready(function() {
  //   dTable = $('#lookup').DataTable({
  //     responsive: true
  //   });
  // });
</script>

<style type="text/css">
td.details-control {
  text-align:center;
  color:forestgreen;
  cursor: pointer;
}
tr.shown td.details-control {
  text-align:center; 
  color:red;
}
</style>

<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>DATA PENGAJUAN</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
      
    </div>

    <table id="example" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th></th>
                <th>TANGGAL</th>
                <th>VERSI</th>
                <th>TIPE VERSI</th>
                <th>TAHUN BORANG</th>
                <th>PRODI</th>
                <th>FAKULTAS</th>
                <th>UPLOAD</th>
                <th>PROSES</th>
            </tr>
        </thead>
    </table>
 </div><!-- /.boxbody -->
</div><!-- /.box -->

<script type="text/javascript">
function hapus(id) {
  if (confirm("Yakin hapus ?")) {
    window.location = "<?php echo base_url('pengajuan/aksi_hapus/'); ?>" + id;
  }
}
</script>
<script type="text/javascript">
  
     $(document).ready(function () {

         var table = $('#example').DataTable({
             "data": testdata.data,
             select:"single",
             "columns": [
                 {
                     "className": 'details-control',
                     "orderable": false,
                     "data": null,
                     "defaultContent": '',
                     "render": function () {
                         return '<i class="fa fa-plus-square" aria-hidden="true"></i>';
                     },
                     width:"15px"
                 },
                 { "data": "tanggal" },
                 { "data": "versi" },
                 { "data": "tipeversi" },
                 { "data": "tahunborang" },
                 { "data": "prodi" },
                 { "data": "fakultas" },
                 { "data": "upload" },
                 { "data": "proses" },
             ],
             "order": [[1, 'asc']]
         });

         // Add event listener for opening and closing details
         $('#example tbody').on('click', 'td.details-control', function () {
             var tr = $(this).closest('tr');
             var tdi = tr.find("i.fa");
             var row = table.row(tr);

             if (row.child.isShown()) {
                 // This row is already open - close it
                 row.child.hide();
                 tr.removeClass('shown');
                 tdi.first().removeClass('fa-minus-square');
                 tdi.first().addClass('fa-plus-square');
             }
             else {
                 // Open this row
                 row.child(format(row.data())).show();
                 tr.addClass('shown');
                 tdi.first().removeClass('fa-plus-square');
                 tdi.first().addClass('fa-minus-square');
             }
         });

         table.on("user-select", function (e, dt, type, cell, originalEvent) {
             if ($(cell.node()).hasClass("details-control")) {
                 e.preventDefault();
             }
         });
     });

    function format(d){
        
         // `d` is the original data object for the row
         return '<table id="example" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"> <thead> <tr> <th>Name</th> <th>Position</th> <th>Office</th> <th>Salary</th> </tr> </thead> </table>';  
    }

    var testdata = {
    "data": [
      <?php foreach ($this->db->get('pengajuan')->result() as $item):
         $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $item->tipeversi_id))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $item->id))->result());
          
          // $persentase = $jumlah_dokumen / $jumlah_total_dokumen * 100;
          $persentase = $jumlah_dokumen != 0 ? $jumlah_dokumen / $jumlah_total_dokumen * 100 : 0;

          $prodi = $this->m_universal->get_id('prodi', $item->prodi_id);
          // var_dump($prodi);
          if ($prodi == null) {
            // $tblUser = $user->username;
            $prodi = $fakultas = null;
          } else {
            $prodi = $this->m_universal->get_id('prodi', $item->prodi_id);
            $fakultas = $this->m_universal->get_id('fakultas', $prodi->fakultas_id);
            // $tblUser = $user->username . ' (' . $fakultas->nama . ' | ' . $prodi->nama . ')';
            $prodi = $prodi->nama;
            $fakultas = $fakultas->nama;
          }
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row()->versi_id))->row();
        ?>{<?php
        echo '"tanggal"' . ': ' . '"' . $this->pustaka->tanggal_indo($item->tanggal) . '",';
        echo '"versi"' . ': ' . '"' . $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun . '",';
        echo '"tipeversi"' . ': ' . '"' . $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row()->tipe . '",';
        echo '"tahunborang"' . ': ' . '"' . $item->tahun_borang . '",';
        echo '"prodi"' . ': ' . '"' . $prodi . '",';
        echo '"fakultas"' . ': ' . '"' . $fakultas . '",';
        echo '"upload"' . ': ' . '"' . number_format((float)$persentase, 2, '.', '') . ' %' . '",';
        echo '"proses"' . ': ' . '"' . 'ubah' . '",';
        ?>},<?php
      endforeach ?>
    ]
    };
</script>
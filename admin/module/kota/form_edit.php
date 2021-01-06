<<!--**********************************
            Content body start
            ***********************************-->
            <div class="content-body">

                <div class="container-fluid mt-3">
                    <section class="content">
                        <!-- Info boxes -->
                        <div class="row">
                          <div class="col-xs-12">
                             <div class="box box-info">
                                <div class="box-header">
                                   <h3 class="box-title">Form Edit Kota</h3>
                               </div> <!-- /.Box Header -->	
                               <?php 
                               include "../lib/config.php";
                               include "../lib/koneksi.php";
                               
                               $idKota= $_GET['id_kota'];
                               $queryEdit = mysqli_query($koneksi, "SELECT * FROM tbl_kota WHERE id_kota='$idKota'");

                               $hasilQuery = mysqli_fetch_array($queryEdit);
                               $idKota = $hasilQuery['id_kota'];
                               $namaKota = $hasilQuery['nama_kota'];
                               ?>
                               <form class="form-horizontal" action="../admin/module/kota/aksi_edit.php" method="post">
                                <input type="hidden" name="id_kota" value="<?php echo $idKota; ?>">
                                <div class="box-body">
                                   <div class="form-group">
                                      <label for="inputEmail3" class="col-sm-2 control-label">Nama Kota</label>
                                      <div class="col-sm-10">
                                         <input type="text" class="form-control" id="namaKota" name="nama_kota" placeholder="Nama Kota" 
                                         value="<?php echo $namaKota; ?>">
                                     </div>
                                 </div>
                             </div>	 <!-- .box-body -->
                             <div class="box-footer">
                               <button type="submit" class="btn btn-danger pull-right">Simpan</button>
                           </div>
                       </form>
                   </div>
               </div>
           </div>

       </div> <!-- /.Box -->
   </div>
</div>
</section> <!-- /.content -->
</div>
<!-- #/ container -->
</div>
        <!--**********************************
            Content body end
            ***********************************-->
            <!-- Main content -->
            
        </div> <!-- /.content wrapper -->

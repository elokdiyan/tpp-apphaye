 <!--**********************************
            Content body start
            ***********************************-->
            <div class="content-body">

              <div class="container-fluid mt-3">
                <!-- Main content -->
                <section class="content">
                  <!-- Info boxes -->
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="card">
                        <div class="card-body">
                          <div class="active-member">
                            <div class="table-responsive">
                              <h3 class="box-title"> Data Pesanan</h3>
                              <div class="box-tools">
                                <div class="input-group" style="width : 150px;">
                                  <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                                  <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                  </div>
                                </div>
                              </div>
                              <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                  <tr>
                                    <th>Nama Pembeli</th>
                                    <th>Tanggal Order</th>
                                    <th>Biaya Kirim</th>
                                    <th>Status Order</th> 
                                    <th>Aksi</th>
                                    <th> </th>
                                  </tr>
                                  <?php 
                                  include "../lib/config.php";
                                  include "../lib/koneksi.php";
                                  
                                  if (isset($_POST['tanggal_beli'])){
                                   $tanggal_beli = $_POST['tanggal_beli'];
                                   $kuerimember = mysqli_query($koneksi, "SELECT * FROM tbl_pembelian WHERE tanggal_beli='$tanggal_beli'");
                                 }else {
                                   $kuerimember = mysqli_query($koneksi, "SELECT * FROM tbl_pembelian");
                                 }
                                 
                                 
                                 while ($memb = mysqli_fetch_array($kuerimember)) {
                                   ?>
                                   <tr>
                                    <td>
                                     <?php
                                     $kueriKota = mysqli_query($koneksi, "SELECT * FROM tbl_member"); 
                                     while ($kot = mysqli_fetch_array($kueriKota)) {
                                      if($memb['id_member'] == $kot['id_member']){echo $kot['nama'];}
                                    } ?>
                                  </td>
                                  <td>
                                   <?php echo $memb['tanggal_beli']; ?>
                                 </td>
                                 <td>
                                   <?php echo $memb['biaya_kirim']; ?>
                                 </td>
                                 <td>
                                   <?php echo $memb['status_order']; ?>
                                 </td>
                                 <td>
                                  <div class="btn-group">
                                    <a href="<?php echo $admin_url; ?>adminweb.php?module=edit_pesanan&id_order=<?php echo $memb['id_pembelian']; ?>" class="btn btn-warning"><i class="fa fa-pencil"></button></i></a> <!-- Edit -->
                                  </td>
                                  <td><div class="btn-group">
                                    <a href="adminweb.php?module=cetak_pesanan" class="btn btn-primary"><i class="fa fa-print"></i> Cetak</button></a>
                                    </div></td><!-- cetak laporan -->
                                  <td>
                                    <div class="btn-group">
                                      <a href="<?php echo $admin_url; ?>adminweb.php?module=order&id_order=<?php echo $memb['id_pembelian']; ?>">Detail Order</a>
                                    </td>
                                    
                                  </tr>
                                <?php } ?>
                              </table>
                            </div> <!-- /.Box Body -->
                            
                          </div> <!-- /.Box Footer -->
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
            
<!-- Start Cart  -->
<?php 
$sid = session_id();  
?>
<div class="cart-box-main">
    <div class="container">
        <?php 
        $idMember = $_SESSION['idMember'];
        $queryGetProfilMember = mysqli_query($koneksi, "SELECT * FROM tbl_member WHERE id_member = $idMember");
        $res = mysqli_fetch_array($queryGetProfilMember);

        ?>
        <div class="row">    
            <div class="col-sm-6 col-lg-6 mb-3">
                <div class="checkout-address">
                    <div class="title-left">
                        <h3>Billing address</h3>
                    </div>
                    <form class="needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="firstName">Nama *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="name" value="<?php echo $res['nama']; ?>" disabled>
                                <div class="invalid-feedback"> Valid first name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">No Hp *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="no_hp" value="<?php echo $res['no_hp']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">Email *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="email" value="<?php echo $res['email']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">Alamat *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="alamat" value="<?php echo $res['alamat']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">Kelurahan *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="kelurahan" value="<?php echo $res['kelurahan']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">Kecamatan *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="kecamatan" value="<?php echo $res['kecamatan']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName">Kabupaten *</label>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="kabupaten" value="<?php echo $res['kabupaten']; ?>" disabled>
                                <div class="invalid-feedback"> Valid last name is required. </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="namaKota">Kota *</label>
                            <select name="idKota" class="form-control" disabled>
                                <?php 
                                $getKota = mysqli_query($koneksi, "SELECT * FROM tbl_kota");
                                while ($itemKota = mysqli_fetch_array($getKota)) {
                                 ?>
                                 <option value="<?php echo $itemKota['id_kota']; ?>" ><?php echo $itemKota['nama_kota']; ?></option>
                             <?php } ?>
                         </select>
                     </div>
                     <div class="mb-3">
                        <label for="lastName">Provinsi *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="provinsi" value="<?php echo $res['provinsi']; ?>" disabled>
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="lastName">Kode Pos *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="kode_pos" value="<?php echo $res['kode_pos']; ?>" disabled>
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <div class="title"> <span>Payment</span> </div>
                    <div class="d-block my-3">
                        <div class="custom-control custom-radio">
                            <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                            <label class="custom-control-label" for="credit">Credit card</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                            <label class="custom-control-label" for="debit">Debit card</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                            <label class="custom-control-label" for="paypal">Paypal</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="cc-name">Name on card</label>
                            <input type="text" class="form-control" id="cc-name" placeholder="" required> <small class="text-muted">Full name as displayed on card</small>
                            <div class="invalid-feedback"> Name on card is required </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="cc-number">Credit card number</label>
                            <input type="text" class="form-control" id="cc-number" placeholder="" required>
                            <div class="invalid-feedback"> Credit card number is required </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="cc-expiration">Expiration</label>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                            <div class="invalid-feedback"> Expiration date required </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="cc-expiration">CVV</label>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                            <div class="invalid-feedback"> Security code required </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="payment-icon">
                                <ul>
                                    <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                    <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                    <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                    <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                    <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr class="mb-1"> </form>
                </div>
            </div>
            <div class="col-sm-6 col-lg-6 mb-3">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="shipping-method-box">
                            <div class="title-left">
                                <h3>Shipping Method</h3>
                            </div>
                            <div class="mb-4">
                                <div class="custom-control custom-radio">
                                    <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
                                    <label class="custom-control-label" for="shippingOption1">Standard Delivery</label> <span class="float-right font-weight-bold">FREE</span> </div>
                                    <div class="ml-4 mb-2 small">(3-7 business days)</div>
                                    <div class="custom-control custom-radio">
                                        <input id="shippingOption2" name="shipping-option" class="custom-control-input" type="radio">
                                        <label class="custom-control-label" for="shippingOption2">Express Delivery</label> <span class="float-right font-weight-bold">$10.00</span> </div>
                                        <div class="ml-4 mb-2 small">(2-4 business days)</div>
                                        <div class="custom-control custom-radio">
                                            <input id="shippingOption3" name="shipping-option" class="custom-control-input" type="radio">
                                            <label class="custom-control-label" for="shippingOption3">Next Business day</label> <span class="float-right font-weight-bold">$20.00</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-12">
                                    <div class="odr-box">
                                        <div class="title-left">
                                            <h3>Shopping cart</h3>
                                        </div>
                                        <div class="rounded p-2 bg-light">
                                            <?php 
                                            $sql = mysqli_query($koneksi, "SELECT * FROM tbl_order, tbl_produk WHERE tbl_order.id_session = '$sid' AND tbl_order.id_produk = tbl_produk.id_produk");
                                            while ($d=mysqli_fetch_array($sql)){
                                                ?>
                                                <div class="media mb-2 border-bottom">

                                                    <div class="media-body"><?php echo $d['nama_produk']; ?></div>
                                                    <div class="small text-muted">Price: Rp <?php echo number_format($d['harga']); ?></div>

                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="col-md-12 col-lg-12">
                                    <div class="order-box">
                                        <div class="title-left">
                                            <h3>Your order</h3>
                                        </div>
                                        <div class="d-flex">
                                            <div class="font-weight-bold">Product</div>
                                            <div class="ml-auto font-weight-bold">Total</div>
                                        </div>

                                        <hr class="my-1">
                                        <?php
                                        $sql = mysqli_query($koneksi, "SELECT * FROM tbl_order, tbl_produk WHERE tbl_order.id_session = '$sid' AND tbl_order.id_produk = tbl_produk.id_produk");
                                        while ($d=mysqli_fetch_array($sql)){
                                            $subtotal = $d['harga']*$d['jumlah'];
                                            $grandtotal = $subtotal + $subtotal;
                                            ?>
                                            <div class="d-flex">
                                                <h4>Sub Total</h4>
                                                <div class="ml-auto font-weight-bold"><?php echo $subtotal; ?></div>
                                            </div>
                                        <?php } ?>
                                        <div class="d-flex">
                                            <h4>Shipping Cost</h4>
                                            <div class="ml-auto font-weight-bold"> Free </div>
                                        </div>
                                        <hr>            <div class="d-flex gr-total">
                                            <h5>Grand Total</h5>
                                            <div class="ml-auto h5"><?php echo $grandtotal; ?></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover">Place Order</a> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <!-- End Cart -->
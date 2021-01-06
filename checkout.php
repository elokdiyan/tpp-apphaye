<?php 
include "template/header.php";
if(!empty($_SESSION['idMember'])){
include "pages/cekorder.php";
include "template/footer.php";
}else{
	header("location:login.php");
}
 ?>

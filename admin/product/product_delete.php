<?php  
	session_start();
   include_once'../../connect.php';
   If(isset($_GET["Del"])){
		$Pid=$_GET['Del'];
		$sql= "DELETE FROM product WHERE ProID='$Pid'";
		$query= mysqli_query($con,$sql);
		header('location: ../admin.php?manage=product');}
?>
<?php  
	session_start();
   include_once'../../connect.php';
   If(isset($_GET["Del"])){
		$CusID=$_GET['Del'];
		$sql= "DELETE FROM customer WHERE CusID='$CusID'";
		$query= mysqli_query($con,$sql);
		header('location: ../admin.php?manage=customer');}
?>
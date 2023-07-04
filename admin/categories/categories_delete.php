<?php  
	session_start();
   include_once'../../connect.php';
   If(isset($_GET["Del"])){
		$Cid=$_GET['Del'];
		$sql= "DELETE FROM categories WHERE CateID='$Cid'";
		$query= mysqli_query($con,$sql);
		header('location: ../admin.php?manage=categories');}
?>
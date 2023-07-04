<?php  
	session_start();
   include_once'../../connect.php';
   If(isset($_GET["Del"])){
		$Bid=$_GET['Del'];
		$sql= "DELETE FROM brand WHERE BraID='$Bid'";
		$query= mysqli_query($con,$sql);
		header('location: ../admin.php?manage=brand');}
?>
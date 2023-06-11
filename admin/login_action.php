
<?php 
session_start();
require('../connect.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $username = $_POST["txtuser"];
   $password = $_POST["txtpass"];

   // Truy vấn cơ sở dữ liệu để kiểm tra tên người dùng và mật khẩu
   $sql = "SELECT * FROM admin WHERE Username = '$username' and Password = '$password'";
   $result = $con->query($sql);

   if ($result->num_rows==1) {

		$row = $result->fetch_assoc();
		$_SESSION["fullname"] = $row["Username"];
      // $_SESSION["uid"] = $row["uid"];
		$_SESSION["login_error"] = "";
		$_SESSION["login"]=TRUE;
		header("Location: index.php");
	} else {
		$_SESSION["login_error"]="Username or Password incorrect! Please try again!";
		$_SESSION["login"] = FALSE;
		header("Location: login.php");
	}
}
?>
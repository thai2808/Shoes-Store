<?php 
	session_start();
	if (!isset($_SESSION["login_error"])) 
		$_SESSION["login_error"]="";
?>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
   <center>
		<font color=red><?php echo $_SESSION["login_error"];?></font>
	</center>
    <h2>Đăng nhập</h2>
    <form method="post" action="login_action.php">
        <label>Tên người dùng:</label>
        <input type="text" name="txtuser" ><br>

        <label>Mật khẩu:</label>
        <input type="password" name="txtpass" ><br>

        <input type="submit" value="Đăng nhập">
    </form>
</body>
</html>
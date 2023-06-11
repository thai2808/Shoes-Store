<!-- Login -->
<?php 
require('connect.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $username = $_POST["txtuser"];
   $password = $_POST["txtpass"];

   // Truy vấn cơ sở dữ liệu để kiểm tra tên người dùng và mật khẩu
   $sql = "SELECT * FROM customer WHERE CusUser = '$username' and CusPass = '$password'";
   $result = $con->query($sql);

   if ($result->num_rows==1) {

		$row = $result->fetch_assoc();
		$_SESSION["fullname"] = $row["CusName"];
      $_SESSION["cusid"] = $row["CusID"];
		$_SESSION["login_error"] = "";
		$_SESSION["login"]=TRUE;
		header("Location: index.php");
	} else {
		$_SESSION["login_error"]="Username or Password incorrect! Please try again!";
		$_SESSION["login"] = FALSE;     
		header("Location: index.php");
      // echo"FALSE";
	}
}
?>
<header class="header">
   <div class="header__top">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6">
               <div class="header__top__left">
                  <ul>
                     <li><i class="fa fa-envelope"></i> shoesstore@gmail.com</li>
                     <li>Free Shipping for all Order of $99</li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="header__top__right">
                  <div class="header__top__right__social">
                     <a href="#"><i class="fa fa-facebook"></i></a>
                     <a href="#"><i class="fa fa-twitter"></i></a>
                     <a href="#"><i class="fa fa-linkedin"></i></a>
                     <a href="#"><i class="fa fa-pinterest-p"></i></a>
                  </div>
                  <div class="header__top__right__auth">
                     <?php if (isset($_SESSION["login"]) && $_SESSION["login"]==TRUE) {
                        echo "<p>Hello ".$_SESSION['fullname']." <a href='logout.php'><i class='fa fa-user'></i>Logout</a></p>";
                     }
                     else{
                        echo "<a href='#' data-toggle='modal' data-target='#login'><i class='fa fa-user'></i> Login</a>";
                     }
                     ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <div class="col-lg-3">
            <div class="header__logo">
               <a href="./index.php"><img src="img/logo-shoes.png" alt=""></a>
            </div>
         </div>
         <div class="col-lg-6">
            <nav class="header__menu">
               <ul>
                  <?php
                  $sql_category = mysqli_query($con, 'SELECT * FROM categories');
                  while ($row_category = mysqli_fetch_array($sql_category)) {
                  ?>
                     <?php echo "<li class ='cate" . $row_category['CateID'] . "'><a href='shop-grid.php?CateID=" . $row_category['CateID'] . "'>" . $row_category['CateName'] . "</a></li>" ?>
                  <?php
                  }
                  ?>
                  <li><a href="./contact.html">Contact</a></li>
               </ul>
            </nav>
         </div>
         <div class="col-lg-3">
            <div class="header__cart">
               <ul>
                  <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                  <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
               </ul>
               <div class="header__cart__price">item: <span>3.000.000 VNĐ</span></div>
            </div>
         </div>
      </div>
      <div class="humberger__open">
         <i class="fa fa-bars"></i>
      </div>
   </div>
</header>
<!-- Font Awesome -->

<div class="modal fade " id="login" tabindex="-1" role="dialog">
   <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
         <div class="modal-header d-flex justify-content-center">
            <h4 class="modal-title">Đăng Nhập</h4>
            <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button> -->
         </div>
         <div class="modal-body">

            <form method="post" action="#">
               <!-- Email input -->
               <div class="form-outline mb-4">
                  <input type="text" id="form2Example1" class="form-control" placeholder="Email address" name = "txtuser"/>
                  <!-- <label class="form-label" for="form2Example1">Email address</label> -->
               </div>

               <!-- Password input -->
               <div class="form-outline mb-4">
                  <input type="password" id="form2Example2" class="form-control" placeholder="Password" name = "txtpass"/>
                  <!-- <label class="form-label" for="form2Example2">Password</label> -->
               </div>

               <!-- 2 column grid layout for inline styling -->
               <div class="row mb-4">
                  <div class="col d-flex justify-content-center">
                     
                     <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                        <label class="form-check-label" for="form2Example31"> Remember me </label>
                     </div>
                  </div>

                  <div class="col">
                     <!-- Simple link -->
                     <a href="#!" style="color: #cc9966;">Forgot password?</a>
                  </div>
               </div>

               <!-- Submit button -->
               <button type="submit" class="btn btn-block mb-4 btn-signin">Sign in</button>

               <!-- Register buttons -->
               <div class="text-center">
                  <p>Not a member? <a href="#!" style="color: #cc9966;">Register</a></p>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
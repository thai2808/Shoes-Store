<?php 
		$sql_category = mysqli_query($con,'SELECT * FROM categories');
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
                        <a href="#"><i class="fa fa-user"></i> Login</a>
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
                  <a href="./index.html"><img src="img/logo-shoes.png" alt=""></a>
               </div>
            </div>
            <div class="col-lg-6">
               <nav class="header__menu">
                  <ul>
                     <?php
                        while($row_category = mysqli_fetch_array($sql_category)) {
                     ?>
                     <li><a href="./shop-grid.html"><?php echo $row_category['CateName']?></a></li>
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
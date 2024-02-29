<%@ Page Title="" Language="C#" MasterPageFile="~/About_Contact/About.Master" AutoEventWireup="true" CodeBehind="AboutWebPage.aspx.cs" Inherits="Master_Page_loginRegister.About_Contact.AboutWebPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




  <section id="header" class="header1">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:-13px">
                                <li class="last"><a href="../JobSeeker/HomJobSeeker.aspx">Profile</a></li>
                 <li class="last"><a href="SearchLocation_2.aspx">Jobs</a></li>
                <li class="last"><a href="../JobSeeker/changepasswordJobSeeker.aspx">Change Password</a></li>
                <li><a href="AboutWebPage.aspx"class="active">About</a></li>
                <li><a href="ContactWebpage.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>
<!-- 
        <div class="mobile">
                <i id="bar" class="fas fa-outdent"></i>
        </diV> -->


    </section>


  <section id="page-header" class="about-header">

   <h2>#KnowUs</h2>

    <p>Lorem ipsum dolor sit amet, consectetur</p>


    <!-- <img src="imagehero2.png.jpg" id="imghero" alt=""> -->
  </section>


  <section id="about-head" class="section-p1">
    <img src="abt.png" alt="">
    <div>
      <h2>Who We Are?</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus aliquid nemo harum consectetur amet dolorum
        aspernatur, inventore possimus ipsam, modi necessitatibus ipsum impedit sit officia quibusdam eaque obcaecati ut
        similique?</p>
      <abbr title="">Create stunning image with as much or as little control as you like thanks to a choice of basic
        and Creative modes.</abbr>
        <br><br>

        <marquee bgcolor="#ccc" loop="-1" scrollamount="5" width="100%">Create stunning image with as much or as little control as you like thanks to a choice of basic
          and Creative modes</marquee>
    </div>
  </section>

  <section id="about-app" class="section-p1">
    <h1>Download Our <a href="#">App</a></h1>
    <div class="video">
      <video autoplay muted loop src="https://www.visme.co/wp-content/themes/visme/videos/video-maker.webm"></video>
    </div>
  </section>

  <section id="feature" class="section-p1">
    <div class="fe-box boxsuprt">
        <img src="shipp.png" alt="">
        <h6>Free Shipping</h6>
    </div>
    <div class="fe-box">
        <img src="foodimg.png.jpg" alt="">
        <h6>Online Order</h6>
    </div>
    <div class="fe-box">
        <img src="money.png.jpg" alt="">
        <h6>Save Money</h6>
    </div>
    <div class="fe-box">
        <img src="promtn.png" alt="">
        <h6>Promotions</h6>
    </div>
    <div class="fe-box">
        <img src="hppySELL.png.jpg" alt="">
        <h6>Happy Sell</h6>
    </div>
    <div class="fe-box">
        <img src="suppot.png" alt="">
        <h6>F24/7 Support</h6>
    </div>

</section>


<section id="newsletter"  class="section-p1" class="section-m1">
  <div class="newstext">
    <h4>Sign Up For job Search</h4>
   <h5>Get E-mail updates about our latest shop and <span>special offers.</span></h5> 
  </div>
  <div class="form">
    <input type="text" name="" id="" placeholder="Your email address" required="required">
      <button class="normal" style="height:56px"> <a href="../JobSeeker/Registration_JobSeeker.aspx" style="text-decoration:none;color:white">Sign Up</a></button>
  </div>
</section>


    <footer class="section=p1" style="display:flex;position:relative;left:173px">
        <div class="col" id="ab2">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>
         <h4>Contact</h4>
         <a href="#"><strong>Address:</strong> 562 Committee Chowk,Uttar Pradesh, India</a>
        <!-- <a href="#"><strong>Address:</strong> 562 Wellington Road, Street 32, San Francisco</a> -->
         <a href="#"><strong>Phone:</strong> +01 2222 365 /(+91) 01 2345 6789</a>
         <a href="#"><strong>Hours:</strong>10:00 - 18:00, Mon - Sat</a>
         <div class="follow">
           <h4>Follow us</h4>
           <div class="icon">
       <i class="fab fa-facebook-f"></i>
       <i class="fab fa-twitter"></i>
       <i class="fab fa-instagram"></i>
       <i class="fab fa-pinterest-p"></i>
       <i class="fab fa-youtube"></i>
 
           </div>
         </div>
        </div>
 
        <div class="col about" id="ab3">
         <h4>About</h4>
         <a href="#">About Us</a>
         <a href="#">Delivery Information</a>
         <a href="#">Privacy Policy</a>
         <a href="#">Terms &  Conditions</a>
         <a href="#">Contact Us</a>
 
 
        </div>
 
        <div class="col account" id="ab4">
         <h4>My Account</h4>
         <a href="#">Sign In</a>
         <a href="#">View Cart</a>
         <a href="#">My Wishlist</a>
         <a href="#">Track My Order</a>
         <a href="#">Help</a>
        
        </div>
 
        <div class="col install" id="ab5" style="position:relative;left:-123px">
         <h4>Install App</h4>
         <a href="#"> From App Store or Google Play</a>
         <div class="row">
           <img src="apple.png" alt="" id="apple">
           <img src="STORE.PNG" alt="">
         </div>
         <a href="#">Secured Payments Gateways</a>
        <div class="images"> 
         <img src="vis.png.svg" alt="" class="paymt">
         <img src="pay.png" alt="" class="paymt"> 
         <img src="master.png.png" alt="" class="paymt">
         <img src="goog.png" alt="" class="paymt">
        </div>
       </div>
 
       <div class="copyright">
          <a hreff="#"> @ 2021, Tech2 etc - HTML CSS Ecommerce Template</a>
       </div>
 
     </footer>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/About_Contact/Contact.Master" AutoEventWireup="true" CodeBehind="ContactWebpage.aspx.cs" Inherits="Master_Page_loginRegister.About_Contact.ContactWebpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



  
  <section id="header" class="header1">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:33px">
                <li class="last"><a href="../JobSeeker/HomJobSeeker.aspx">Profile</a></li>
                <li class="last"><a href="SearchLocation_2.aspx">Jobs</a></li>
                <li class="last"><a href="../JobSeeker/changepasswordJobSeeker.aspx">Change Password</></li>
                <li><a href="AboutWebPage.aspx">About</a></li>
                <li><a href="ContactWebpage.aspx" class="active">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section>


    
    <section id="page-header" class="contact-header" >

        <h2>#Let's_talk</h2>

        <p>LEAVE A MESSAGE, We love to hear from you!</p>


        <!-- <img src="imagehero2.png.jpg" id="imghero" alt=""> -->
    </section>

    <section id="contact-details" class="section-p1">
        <div class="details">
            <span>GET IN TOUCH</span>
            <h2 id="hdet">Visit one of our agency locations or contact us today</h2>
            <h3>Head office</h3>

            <div>
                <li>
                    <i class="fal fa-map"></i>
                    <p>56 Glassford Street Glasgow G1 1U1 Dehradun, India</p>

                </li>

                <li>
                    <i class="far fa-envelope"></i>
                    <p>contact@example.com</p>

                </li>
                <li>
                    <i class="fas fa-phone-alt"></i>
                    <p>contact@example.com</p>

                </li>
                <li>
                    <i class="far fa-clock"></i>
                    <p>Monday too Saturday: 9.00am to 16.pm</p>

                </li>
            </div>
        </div>


        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d110204.74637227326!2d77.9470943025365!3d30.32540979240221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390929c356c888af%3A0x4c3562c032518799!2sDehradun%2C%20Uttarakhand!5e0!3m2!1sen!2sin!4v1679994650384!5m2!1sen!2sin"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>


     <section id="form-details" style="display:block;height:769px">
        <form>
            <span>LEAVE A MESSAGE</span>
            <h2 style="font-size:3rem;font-weight:bold">We love to hear from you</h2>
                 <asp:TextBox  id="txtname" placeholder="Your Name" runat="server" required="required" style="width:800px; display:block;margin-top:29px;border: .1rem solid #e1e1e1;"  ></asp:TextBox>

                        <asp:TextBox  id="txtemail" placeholder="E-mail" runat="server" required="required" style="width:800px; display:block;margin-top:29px;border: .1rem solid #e1e1e1;"  ></asp:TextBox>

            <asp:TextBox  id="txtsub" placeholder="Subject" runat="server" required="required" style="width:800px; display:block;margin-top:29px;border:.1rem solid #e1e1e1"></asp:TextBox>
            <asp:TextBox ID="txtarea" cols="30" rows="10"  runat="server" required="required" placeholder="Your Message" style="width:800px;height:263px; display:block;margin-top:12px;border: .1rem solid #e1e1e1"></asp:TextBox>
   <asp:button  ID="cli" Height="63px" Width="136px" class="normal1" runat="server" Text="Submit" OnClick="cli_Click"></asp:button>

        </form>
        <div class="people" style="position:relative; left:1009px;top:-611px">
            <div><img src="people.png" alt="">
                <p id="peo">
                    <span>John Doe</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>

            <div><img src="peop.png" alt="">
                <p id="peo">
                    <span>William Smith</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>

            <div><img src="peopp.png" alt="">
                <p id="peo">
                    <span>Emma Stone</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>

        </div>
    </section>




    <section id="newsletter" class="section-p1" class="section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletters</h4>
            <h5>Get E-mail updates about our latest shop and <span>special offers.</span></h5>
        </div>
        <div class="form">
            <input type="text" name="" id="" placeholder="Your email address">
           <!-- <a href="login.html"><button class="normal"id="sign" onclick="togglesign">Sign Up</button></a> -->
      <button class="normal" style="height:56px"> <a href="../MAIN_PAGE.aspx" style="text-decoration:none;color:white">Sign Up</a></button>
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

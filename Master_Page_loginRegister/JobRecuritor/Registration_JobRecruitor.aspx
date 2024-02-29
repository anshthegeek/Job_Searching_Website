<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Registration_JobRecruitor.aspx.cs" Inherits="Master_Page_loginRegister.JobRecuritor.Registration_JobRecruitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link href="../MAINPAGE.css" rel="stylesheet" />

    <link href="../ContactAbout.css" rel="stylesheet" />

    <style>

       .som2{
background: url(search3.png)no-repeat;
    background-size:cover;
    height:90vh;
    width:1500px;        }

       
    </style>

    <div class="som2">
     <table style="position:relative;left:59px;top:49px;width:100px;height:34px;color:white">
        <tr>
            <td  style="font-size:1.7rem;position:relative;left:-12px;font-weight:bold">Company:</td>
            <td><asp:TextBox ID="txtname" runat="server" ForeColor="White" Width="293px" Font-Bold="true" Height="37px" required="required" BackColor="Transparent"></asp:TextBox></td>
        </tr>

     <tr>
         <td style="font-size:1.7rem;position:relative;left:-12px;top:5px;font-weight:bold">Url :</td>
         <td style="padding-top:12px"><asp:TextBox ID="txturl" ForeColor="White" runat="server" Width="293px" Font-Bold="true" Height="37px" required="required" BackColor="Transparent" ></asp:TextBox></td>
     </tr>


           <tr>
           <td style="font-size:1.7rem;position:relative;left:-12px;font-weight:bold">Country :</td>
           <td style="padding-top:12px"><asp:DropDownList ID="txtcountry" Width="100" Font-Bold="true" required="required" BackColor="Transparent" runat="server" OnSelectedIndexChanged="txtcountry_SelectedIndexChanged" AutoPostBack="true" >
                        </asp:DropDownList></td>

       </tr>
        
            <tr>
           <td style="font-size:1rem">State :</td>
           <td><asp:DropDownList ID="txtstate"  Width="100px" required="required" BackColor="Transparent" runat="server" OnSelectedIndexChanged="txtstate_SelectedIndexChanged" AutoPostBack="true" >
                        </asp:DropDownList></td>

       </tr>

         
            
            <tr>
           <td style="font-size:1rem">City :</td>
           <td><asp:DropDownList ID="txtcity" runat="server"  Width="100px" required="required" BackColor="Transparent">
                        </asp:DropDownList></td>

       </tr>

         <tr>
            <td style="font-size:1.7rem;position:relative;left:-12px;top:4px;font-weight:bold">Email :</td>
            <td style="padding-top:12px"><asp:TextBox ID="txtemail" runat="server" ForeColor="White" Width="293px" Font-Bold="true" Height="37px" required="required" BackColor="Transparent"></asp:TextBox></td>
        </tr>

         <tr>
            <td style="font-size:1.7rem;position:relative;left:-12px;top:12px;font-weight:bold">Password:</td>
            <td  style="padding-top:12px"><asp:TextBox ID="txtpassword" runat="server" ForeColor="White" Width="293px" Font-Bold="true" Height="37px" required="required" BackColor="Transparent" ></asp:TextBox></td>
        </tr>

         <tr>
                  <td></td>
            <td style="padding-top:12px"><asp:Button Id="btnregistration" CssClass="btn3" ForeColor="White" runat="server"  Width="293px" Font-Bold="true" Height="37px" required="required" Text="Register" OnClick="btnregistration_Click" />
                </td>
        </tr>
    </table>



        </div>


    <div style="background-color:#f9f9f9">

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

        </div>


</asp:Content>

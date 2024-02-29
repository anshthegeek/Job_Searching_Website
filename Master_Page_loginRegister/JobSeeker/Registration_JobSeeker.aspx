<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Registration_JobSeeker.aspx.cs" Inherits="Master_Page_loginRegister.JobSeeker.Registration_JobSeeker" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="../MAINPAGE.css" rel="stylesheet" />


    <!-- For using ajax command we have to declare scriptmanager command first -->
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>



    
    <style>
       .som2{
background:linear-gradient(rgba(4,11,75,0.719),rgba(4,266,100,.73)), url(woman.jpg)no-repeat;
    background-size:cover;
    height:90vh;
    width:1500px;        }

       
    </style>

    <div class="som2">

    <table style="position:relative;left:39px;top:49px;width:100px;height:34px">
        <tr>
            <td style="font-size:1.7rem;position:relative;left:-12px;font-weight:bold">Name :</td>
            <td><asp:TextBox ID="txtname" runat="server" Width="293px" Font-Bold="true" Height="37px" required="required" BackColor="Transparent"></asp:TextBox></td>
        </tr>



                 <tr>
                
            <td style="font-size:1.7rem;position:relative;left:-12px;font-weight:bold">DOB :</td>
            <td style="padding-top:12px"><asp:TextBox ID="txtdate" runat="server" Width="293px" Height="37px" Font-Bold="true"  required="required" BackColor="Transparent"></asp:TextBox>
         <ajax:CalendarExtender ID="ajcalendra" runat="server" PopupButtonID="txtdate" PopupPosition="TopRight" TargetControlID="txtdate"/>
            </td>
        </tr>


         <tr>
                                    <td style="font-size:1.7rem;position:relative;left:-14px;top:6px;font-weight:bold">Gender</td>
          <td style="padding-top:17px"><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3" Width="293px" Font-Bold="true" required="required" BackColor="Transparent" >
              

              </asp:RadioButtonList></td>


             <tr>
           <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;;font-weight:bold">Qualification </td>
           <td style="padding-top:17px"><asp:DropDownList ID="txtquali" runat="server" Width="100px" Font-Bold="true" required="required"  BackColor="Transparent">
                        </asp:DropDownList></td>

       </tr>
        
                <tr>
           <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;;font-weight:bold">Job Profile :</td>
           <td style="padding-top:17px"><asp:DropDownList ID="txtprofile" runat="server" Font-Bold="true"   Width="100px" required="required" BackColor="Transparent" OnSelectedIndexChanged="txtprofile_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList></td>


                    
                <tr id="tr_skills" runat="server">
           <td style="font-size:1rem;position:relative;left:-17px;top:3px">Job Profile Skill :</td>
           <td style="padding:3px"><asp:CheckBoxList ID="checkskill" runat="server" RepeatColumns="10"  Width="300px" required="required" BackColor="Transparent"></asp:CheckBoxList>
                       </td>

       </tr>

            <tr>
           <td style="font-size:1.7rem;position:relative;left:-17px;top:7px;font-weight:bold">Country :</td>
           <td style="padding-top:13px"><asp:DropDownList ID="txtcountry" runat="server" Font-Bold="true"  Width="100px" required="required" BackColor="Transparent" OnSelectedIndexChanged="txtcountry_SelectedIndexChanged1" AutoPostBack="true">
                        </asp:DropDownList></td>

       </tr>

        
            <tr>
           <td style="font-size:1rem;position:relative;left:-17px;top:4px">State :</td>
           <td><asp:DropDownList ID="txtstate" runat="server"  Width="100px"  required="required" BackColor="Transparent" OnSelectedIndexChanged="txtstate_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList></td>

       </tr>



             
                          
            <tr>
           <td style="font-size:1rem;position:relative;left:-17px;top:2px">City :</td>
           <td><asp:DropDownList ID="txtcity" runat="server" required="required" Width="100px" BackColor="Transparent">
                        </asp:DropDownList></td>

       </tr>

       </tr>


         <tr>
            <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;font-weight:bold">Email :</td>
            <td  style="padding-top:17px"><asp:TextBox ID="txtemail" runat="server" Width="293px" Height="37px" required="required" Font-Bold="true"  BackColor="Transparent"></asp:TextBox></td>
        </tr>

         <tr>
            <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;;font-weight:bold">Password :</td>
            <td  style="padding-top:17px"><asp:TextBox ID="txtpassword" runat="server" Width="293px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
                </tr>



        
         <tr>
            <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;font-weight:bold">Image</td>
            <td style="padding-top:17px"><asp:FileUpload Id="fileregister" runat="server" required="required" BackColor="Transparent" />
                </td>
        </tr>

        
        
         <tr>
            <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;font-weight:bold">Resume :</td>
            <td style="padding-top:17px"><asp:FileUpload Id="resumefile" runat="server" required="required" BackColor="Transparent"/>
                </td>
        </tr>

         <tr>
            <td></td>
            <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;text-align:center">
      <asp:Button Id="btnregistration" runat="server"  class="btn3" Width="104px"  Height="38px" Text="Register" OnClick="btnregistration_Click" />
                </td>
        </tr>


        
         <tr>
             <td></td>
             <td><asp:Label ID="lblmsg" runat="server" ForeColor="#66ffff" Font-Bold="true"></asp:Label></td>
         </tr>



    </table>
        </div>


 <footer class="section=p1" style="display:flex;position:relative;left:13px">
        <div class="col" id="ab2" style="font-size:1.5rem">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>
         <h4>Contact</h4>
            <br />
         <a href="#"><strong>Address:</strong> 562 Committee Chowk,Uttar Pradesh, India</a>
            <br />
            <br />

        <!-- <a href="#"><strong>Address:</strong> 562 Wellington Road, Street 32, San Francisco</a> -->
         <a href="#"><strong>Phone:</strong> +01 2222 365 /(+91) 01 2345 6789</a>
            <br />
            <br />

         <a href="#"><strong>Hours:</strong>10:00 - 18:00, Mon - Sat</a>
            <br />
            <br />
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
 
        <div class="col about" id="ab3" style="position:relative;top:47px;left:63px;font-size:1.5rem">
         <h4>About</h4>
            <br />
         <a href="#">About Us</a>
            <br />
            <br />

         <a href="#">Delivery Information</a>
            <br />
            <br />
         <a href="#">Privacy Policy</a>
            <br />
            <br />
         <a href="#">Terms &  Conditions</a>
            <br />
            <br />
         <a href="#">Contact Us</a>
 
 
        </div>
 
        <div class="col account" id="ab4" style="position:relative;top:47px;left:81px;font-size:1.5rem">
         <h4>My Account</h4>
            <br />
         <a href="#">Sign In</a>
            <br />
            <br />
         <a href="#">View Cart</a>
            <br />
            <br />
         <a href="#">My Wishlist</a>
            <br />
            <br />
         <a href="#">Track My Order</a>
            <br />
            <br />
         <a href="#">Help</a>
        
        </div>
 
        <div class="col install" id="ab5" style="position:relative;font-size:1.5rem;left:172px;top:47px"">
         <h4>Install App</h4>
            <br />
         <a href="#"> From App Store or Google Play</a>
            <br />
         <div class="row">
          <img src="apple.png" alt="" id="apple" width="132px" height="63px" style="position:relative;top:19px">
           <img src="STORE.PNG" alt="" width="132px">
         </div>
         <a href="#">Secured Payments Gateways</a>
        <div class="images"> 
         <img src="vis.png.svg" alt="" class="paymt" width:"67px">
         <img src="pay.png" alt="" class="paymt" width:"67px"> 
         <img src="master.png.png" alt="" class="paymt" style="width:55px">
         <img src="goog.png" alt="" class="paymt">
        </div>
       </div>
 <br />
     <br />
       <div class="copyright">
          <a hreff="#"> @ 2021, Tech2 etc - HTML CSS Ecommerce Template</a>
       </div>
 
     </footer>
</asp:Content>

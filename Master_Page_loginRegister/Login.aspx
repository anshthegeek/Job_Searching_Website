<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Master_Page_loginRegister.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="FOOTERPAGE.css" rel="stylesheet" />
    <link href="MAINPAGE.css" rel="stylesheet" />

 
    <style>

        body {
    background-color: white;
    font-size: 1.6rem;
    font-family: "Open Sans", sans-serif;
    color:black;
}

h2 {
    font-weight: 300;
    text-align: center;
}

p {
    position: relative;
}

a,
a:link,
a:visited,
a:active {
    color: #3ca9e2;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
}

    a:focus, a:hover,
    a:link:focus,
    a:link:hover,
    a:visited:focus,
    a:visited:hover,
    a:active:focus,
    a:active:hover {
        color: #329dd5;
        -webkit-transition: all 0.2s ease;
        transition: all 0.2s ease;
    }

#login-form-wrap {
    background-color: #fff;
    width: 35%;
    margin: 30px auto;
    text-align: center;
    padding: 20px 0 0 0;
    border-radius: 4px;
    box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
}

#login-form {
    padding: 0 60px;
}

input {
    display: block;
    box-sizing: border-box;
    width: 100%;
    outline: none;
    height: 60px;
    line-height: 60px;
    border-radius: 4px;
}

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 0 0 0 10px;
        margin: 0;
        color: #8a8b8e;
        border: 1px solid #c2c0ca;
        font-style: normal;
        font-size: 16px;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        position: relative;
        display: inline-block;
        background: none;
    }

        input[type="text"]:focus,
        input[type="email"]:focus {
            border-color: #3ca9e2;
        }

            input[type="text"]:focus:invalid,
            input[type="email"]:focus:invalid {
                color: #cc1e2b;
                border-color: #cc1e2b;
            }

        input[type="text"]:valid ~ .validation,
        input[type="email"]:valid ~ .validation {
            display: block;
            border-color: #0C0;
        }


            input[type="text"]:valid ~ .validation span,
            input[type="email"]:valid ~ .validation span {
                background: #0C0;
                position: absolute;
                border-radius: 6px;
            }

                input[type="text"]:valid ~ .validation span:first-child,
                input[type="email"]:valid ~ .validation span:first-child {
                    top: 30px;
                    left: 14px;
                    width: 20px;
                    height: 3px;
                    -webkit-transform: rotate(-45deg);
                    transform: rotate(-45deg);
                }

                input[type="text"]:valid ~ .validation span:last-child,
                input[type="email"]:valid ~ .validation span:last-child {
                    top: 35px;
                    left: 8px;
                    width: 11px;
                    height: 3px;
                    -webkit-transform: rotate(45deg);
                    transform: rotate(45deg);
                }

.validation {
    display: none;
    position: absolute;
    content: " ";
    height: 60px;
    width: 30px;
    right: 15px;
    top: 0px;
}

input[type="submit"] {
    border: none;
    display: block;
    background-color: #3ca9e2;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    cursor: pointer;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
    font-size: 18px;
    position: relative;
    display: inline-block;
    cursor: pointer;
    text-align: center;
}

    input[type="submit"]:hover {
        background-color: #329dd5;
        -webkit-transition: all 0.2s ease;
        transition: all 0.2s ease;
    }

#create-account-wrap {
    background-color: #eeedf1;
    color: #8a8b8e;
    font-size: 14px;
    width: 100%;
    padding: 10px 0;
    border-radius: 0 0 4px 4px;
}















* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
}

body {
    background-color:white;
    font-family: 'Rubik', sans-serif;
}

.login-form {
    background: #fff;
    width: 500px;
    margin: 65px auto;
    display: -webkit-box;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    border-radius: 4px;
    box-shadow: 0 2px 25px rgba(0, 0, 0, 0.2);
}

    .login-form h1 {
        padding: 35px 35px 0 35px;
        font-weight: 300;
    }

    .login-form .content {
        padding: 35px;
        text-align: center;
    }

    .login-form .input-field {
        padding: 12px 5px;
    }

        .login-form .input-field input {
            font-size: 16px;
            display: block;
            font-family: 'Rubik', sans-serif;
            width: 100%;
            padding: 10px 1px;
            border: 0;
            border-bottom: 1px solid #747474;
            outline: none;
            -webkit-transition: all .2s;
            transition: all .2s;
        }

            .login-form .input-field input::-webkit-input-placeholder {
                text-transform: uppercase;
            }

            .login-form .input-field input::-moz-placeholder {
                text-transform: uppercase;
            }

            .login-form .input-field input:-ms-input-placeholder {
                text-transform: uppercase;
            }

            .login-form .input-field input::-ms-input-placeholder {
                text-transform: uppercase;
            }

            .login-form .input-field input::placeholder {
                text-transform: uppercase;
            }

            .login-form .input-field input:focus {
                border-color: #222;
            }

    .login-form a.link {
        text-decoration: none;
        color: #747474;
        letter-spacing: 0.2px;
        text-transform: uppercase;
        display: inline-block;
        margin-top: 20px;
    }

    .login-form .action {
        display: -webkit-box;
        display: flex;
        -webkit-box-orient: horizontal;
        -webkit-box-direction: normal;
        flex-direction: row;
    }

        .login-form .action button {
            width: 432px;
            border: none;
            padding: 18px;
            font-family: 'Rubik', sans-serif;
            cursor: pointer;
            text-transform: uppercase;
            background: #e8e9ec;
            color: #777;
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0;
            letter-spacing: 0.2px;
            outline: 0;
            -webkit-transition: all .3s;
            transition: all .3s;
        }

            .login-form .action button:hover {
                background: #d8d8d8;
            }

            .login-form .action button:nth-child(2) {
                background: #2d3b55;
                color: #fff;
                border-bottom-left-radius: 0;
                border-bottom-right-radius: 4px;
            }

                .login-form .action button:nth-child(2):hover {
                    background: #3c4d6d;
                }

    </style>
    




        <div class="login-form" style="position:relative;left:159px">
        <form>

            <h1 style="font-weight:bold;font-family:cursive">Login</h1>
            <div class="content">
                 <div class="input-field user">
    <asp:Label Text="User Type" runat="server"  Font-Italic="true" Font-Bold="true" AssociatedControlID="ddlusertype"/>
        <asp:DropDownList ID="ddlusertype" runat="server"  CssClass="form-control" height="43px">
                <asp:ListItem Text="--------------Select--------------" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Admin" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Job Seeker" Value="2"></asp:ListItem>
                 <asp:ListItem Text="Job Recruiter" Value="3"></asp:ListItem>
                </asp:DropDownList>
                    
                    </div>
                <div class="input-field user">
    <asp:Label Text="" runat="server" AssociatedControlID="txtemail"/>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter your email" required="required"/>
                    
                    </div>
                <div class="input-field user">

    <asp:Label Text="" runat="server" AssociatedControlID="txtpassword"/>
        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Enter your password" required="required"/>           

            </div>
            <!--    <a href="../ForgetPassword/forgetpassword.aspx" class="link">Forgot Your Password?</a>   -->
            </div>
            <div class="action" style="width:509px">
<asp:Button style="width:543px;position:relative;left:1px;height:73px" ID="btnregister" runat="server" Text="Login" OnClick="btnregister_Click" ></asp:Button>    

            </div>

            <asp:Label ID="lblmsg" runat="server" ForeColor="SkyBlue" Font-Bold="true"></asp:Label>
        </form>
    </div>
    






        
    <div style="background-color:#f9f9f9">
        <footer class="section=p1" style="display:flex;position:relative;left:173px">
        <div class="col" id="ab2">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>
         <h4>Contact</h4>
         <a href="#" style="position:relative;left:-23px" ><strong>Address:</strong> 562 Committee Chowk,Uttar Pradesh, India</a>
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
 
        <div class="col about" id="ab3" style="position:relative;left:29px;top:22px">
         <h4>About</h4>
         <a href="#">About Us</a>
         <a href="#">Delivery Information</a>
         <a href="#">Privacy Policy</a>
         <a href="#">Terms &  Conditions</a>
         <a href="#">Contact Us</a>
 
 
        </div>
 
        <div class="col account" id="ab4" style="position:relative;left:29px;top:23px">
         <h4>My Account</h4>
         <a href="#">Sign In</a>
         <a href="#">View Cart</a>
         <a href="#">My Wishlist</a>
         <a href="#">Track My Order</a>
         <a href="#">Help</a>
        
        </div>
 
        <div class="col install" id="ab5" style="position:relative;left:29px;top:49px">
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

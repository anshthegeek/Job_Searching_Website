<%@ Page Title="" Language="C#" MasterPageFile="~/JobRecuritor/JobRecuritor.Master" AutoEventWireup="true" CodeBehind="changepasswordJobRecruiter.aspx.cs" Inherits="Master_Page_loginRegister.JobRecuritor.changepasswordJobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




    <link href="../MAINPAGE.css" rel="stylesheet" />

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body,
html {
    height: 100%;
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
}

a {
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
    font-size: 14px;
    line-height: 1.7;
    color: #666666;
    margin: 0;
    transition: all 0.4s;
    -webkit-transition: all 0.4s;
    -o-transition: all .4s;
    -moz-transition: all .4s;
}

a:focua {
    outline: none !important;
}

a:hover {
    text-decoration: none;
    color: #57b846;
}

input {
    outline: none;
    border: none;
}

input:focus {
    border-color: transparent !important;
}

button {
    outline: none !important;
    border: none;
    background: transparent;
}

button:hover {
    cursor: pointer;
}

.text-center {
    text-align: center;
}

p-t-12 {
    margin: 1rem;
}

.txt1 {
    font-family: 'Poppins', sans-serif;
    font-weight: 600;
    font-size: 13px;
    line-height: 1.5;
    color: #646464;
}

.txt2 {
    font-family: 'Poppins', sans-serif;
    font-weight: 600;
    font-size: 13px;
    line-height: 1.5;
    color: #000000;
}

.limiter {
    width: 100%;
    margin: 0 auto;

}

.container-login100 {
    width: 100%;
    min-height: 100vh;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 15px;
    background: #9053c7;

}

.wrap-login100 {
    width: 960px;
    height: 80vh;
    margin-top: 4rem;
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    padding: 177px 130px 33px 95px;
}

.login100-pic {
    width: 316px;
    margin-top: -5rem;
}

.login100-pic img {
    max-width: 115%;
}

.login100-form {
    width: 290px;
    margin-top: -80px;
    margin-bottom: 90px;
}

.login100-form-title {
    font-family: 'Poppins', sans-serif;
    font-weight: 700;
    font-size: 24px;
    color: #333333;
    line-height: 1.2;
    text-align: center;
    width: 100%;
    display: block;
    padding-bottom: 54px;
}

.wrap-input100 {
    position: relative;
    width: 100%;
    z-index: 1;
    margin-bottom: 10px;
}

.input100 {
    font-family: 'Poppins', sans-serif;
    font-weight: 500;
    font-size: 15px;
    line-height: 1.5;
    color: #666666;
    display: block;
    width: 100%;
    background: #e6e6e6;
    height: 50px;
    border-radius: 25px;
    padding: 0 30px 0 68px;
}

.focus-input100 {
    display: block;
    position: absolute;
    border-radius: 25px;
    bottom: 0px;
    left: 0px;
    z-index: -1;
    width: 100%;
    height: 100%;
    box-shadow: 0px 0px 0px 0px;
    color: rgba(87, 184, 70, .8);
}

.input100:focus+.focus-input100 {
    -webkit-animation: anim-shadow .5s ease-in-out forwards;
    animation: anim-shadow .5s ease-in-out forwards;
}

@-webkit-keyframes anim-shadow {
    to {
        box-shadow: 0px 0px 70px 25px;
        opacity: 0;
    }

}

.symbol-input100 {
    font-size: 15px;
    display: flex;
    align-items: center;
    position: absolute;
    border-radius: 25px;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    padding-left: 35px;
    pointer-events: none;
    color: #666666;

    -webkit-transition: all .4s;
    -o-transition: all .4s;
    -moz-transition: all .4s;
    transition: all .4s;
}
.input100:focus + .focus-input100 + .symbol-input100 {
    color: #57b846;
    padding-left: 28px;
}
.container-login100-form-btn {
    width: 100%;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    padding-top: 20px;

}
.login100-form-btn {
    font-family: 'Poppins', sans-serif;
    font-weight: 500;
    font-size: 15px;
    line-height: 1.5;
    color: #fff;
    text-transform: uppercase;
    width: 100%;
    height: 50px;
    border-radius: 25px;
    background: #57b846;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 25px;

    -webkit-transition: all .4s;
    -o-transition: all .4s;
    -moz-transition: all .4s;
    transition: all .4s;

}
.login100-form-btn:hover {
    background: #178800;
}
@media (max-width: 992px) {
    .wrap-input100 {
        padding: 177px 90px 33px 85px;
    }
    .login100-pic {
        width: 35%;
    }
    .login100-form {
        width: 50%;
    }

}
@media (max-width: 768px) {
    .wrap-input100 {
        padding: 100px 80px 33px 80px;
    }
    .login100-pic {
        display: none;
    }
    .login100-form {
        width: 100%;
    }

}
@media (max-width: 768px) {
    .wrap-input100 {
        padding: 100px 15px 33px 15px;
    }
}
.validate-input {
    position: relative;
}
    </style>

        
 <section id="header" class="header1"  style="position:relative; left:3px;width:1534px" >
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:3px">
                <li class="last"><a href="HomeJobRecruiter.aspx">Profile</a></li>
                <li class="last"><a href="JobPostWeb.aspx">Job Post</a></li>
                <li class="last"><a href="changepasswordJobRecruiter.aspx" class="active">Change Password</></li>
                <li><a href="../About_Contact/AboutRecruiter.aspx">About</a></li>
                <li><a href="../About_Contact/ContactRecruiter.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section

    



     
        <div class="limiter" style="display:block">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="" data-tilt>
                                        <img  style="width:363px;height:352px;position:relative;top:-89px" src="petrege.png.png" alt="IMG">

                </div>

                <div style="position:relative;left:-123px"
                <form class="login100-form validate-form">
                    <span class="login100-form-title" style="position:relative;left:143px">
                        Password Change

                    </span>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
       <p style="position:relative;top:-12px;left:151px"> <asp:TextBox ID="txtcurrent" runat="server" Width="278px" CssClass="input100" placeholder="Current Password" required="required"/></p>
          
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                        
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Password is required: ex@abc.xyz">
      <p style="position:relative;top:-9px;left:151px"><asp:TextBox ID="txtnewpassword" runat="server" Width="278px" CssClass="input100" placeholder="New Password" required="required"/></p>
          
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>

                    </div>
                                        <div class="wrap-input100 validate-input" data-validate = "Password is required: ex@abc.xyz">
       <p style="position:relative;top:-6px;left:153px"><asp:TextBox ID="txtconfirm" runat="server" CssClass="input100" Width="278px" placeholder="Confirm Password" required="required"/></p>
          
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>

                    </div>

                    <div class="container-login100-form-btn">
                     <p style="position:relative;top:3px;left:156px"><asp:Button ID="btnchange" runat="server" CssClass="login100-form-btn" Width="278px" Text="Change" OnClick="btnchange_Click1"></asp:Button></p>    

                    </div>
                   
                    <div class="text-center p-t-136"style="position:relative;left:149px;top:-3px">
                        <a class="txt2" href="../MAIN_PAGE.aspx" style="text-decoration:underline">Create Your Account</a>
                            
                            <br />
                                              <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>    



                    </div>

                </form>
                    </div>
               




            </div>
        </div>
    </div>








</asp:Content>

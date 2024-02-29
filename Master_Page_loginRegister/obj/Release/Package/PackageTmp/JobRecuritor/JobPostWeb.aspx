<%@ Page Title="" Language="C#" MasterPageFile="~/JobRecuritor/JobRecuritor.Master" AutoEventWireup="true" CodeBehind="JobPostWeb.aspx.cs" Inherits="Master_Page_loginRegister.JobRecuritor.JobPostWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    
    
    <style>
       .som2{
background: url(por.jpeg)no-repeat;
    background-size:cover;
    background-position:top;
    height:90vh;
    width:1500px;        }

       
    </style>


    <div class="som2">
      <section id="header" class="header1" style="width:1493px">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:33px">
                <li class="last"><a href="HomeJobRecruiter.aspx">Profile</a></li>
                <li class="last"><a href="JobPostWeb.aspx" class="active">Job Post</a></li>
                <li class="last"><a href="changepasswordJobRecruiter.aspx">Change Password</></li>
                <li><a href="../About_Contact/AboutWebPage.aspx">About</a></li>
                <li><a href="../About_Contact/ContactRecruiter.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section>

    

<table style="position:relative;top:69px;left:369px">
  <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Job Profile :</td>
      <td><asp:DropDownList ID="txtjobprofile" runat="server" BackColor="Transparent" Font-Bold="true"   Width="100px" required="required"></asp:DropDownList></td>
  </tr>

<tr>
   <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Minimum Exp :</td>
   <td><asp:TextBox ID="txtminexp" runat="server" Width="223px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
</tr>

   <tr>
              <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Maximum Exp :</td>
      <td style="padding-top:3px"><asp:TextBox ID="txtmaxexp" runat="server" Width="223px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></t>
  </tr>

   <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Minimum Salary :</td>
      <td style="padding-top:3px"><asp:TextBox ID="txtminsalary" runat="server" Width="223px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
  </tr>


   
   <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Maximum Salary :</td>
      <td style="padding-top:3px"><asp:TextBox ID="txtmaxsalary" runat="server" Width="223px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
  </tr>


    <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Job Location :</td>
      <td><asp:DropDownList ID="txtloc" runat="server" BackColor="Transparent" Font-Bold="true"   Width="100px" required="required"></asp:DropDownList></td>
  </tr>


      
   <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Number of vacancy  :</td>
      <td style="padding-top:1px"><asp:TextBox ID="txtnoofvacancy" runat="server" Width="223px" Height="37px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
  </tr>


   
      
   <tr>
      <td style="font-size:1.5rem;position:relative;left:-12px;top:-1px;font-weight:bold">Comment :</td>
      <td style="padding-top:3px"><asp:TextBox ID="txtcomments" runat="server" Width="223px" Height="60px" required="required" Font-Bold="true" BackColor="Transparent"></asp:TextBox></td>
  </tr>



   <tr>
      <td ></td>
      <td style="font-size:1.7rem;position:relative;left:-17px;top:13px;text-align:center"><asp:Button Id="btnjobpost" runat="server" Text="Create Job" class="btn3" Width="114px"  Height="48px" OnClick="btnjobpost_Click1"/>
          </td>
  </tr>
</table>


 </div>





     <section class="ceta py-5">
        <div class="container-fluid py-5 text-center">
          <p class="red" style="font-size:2rem;position:relative;top:2px">FEATURED TOURS PACKAGES</p>
          <h1 style="font-size:5rem">Top Technologies</h1>
          <div class="row py-5">
                              <div class="col-lg-11 m-auto pt-3">
                                <div class="row">


                                  <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="frontend.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Frontend Development</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>


                                 <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:199px;height:131px;padding-top:19px" src="backend.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Backend Development</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>




                                   <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="datasci.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Data Science</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>


                                     <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="ai.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Artificial Intelligence</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>


                                  

                                </div>




                                <div class="row py-5">




                                      <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="aspdotnet.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">.Net Development</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>


                                     <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="machine.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Machine Learning</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>




                                  <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="cloud.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Cloud Computing</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>





                                  <div class="col-lg-3" >
                                    <div class="card py-3">
                                      <div class="card-body" style="height:231px">
                                        <img style="width:189px;height:131px;padding-top:19px" src="digital.png" class="img-fluid my-3" alt="" >
                                        <h6 style="font-size:2rem">Digital Marketing</h6>
                                        <h6 class="red" style="font-size:1.5rem">(123) </h6>
                                      </div>
                                    </div>
                                  </div>





                                </div>

                                <div class="row py-5">
                                  <div class="col-lg-5 m-auto">
                                    <button class="btn3" style="font-size:1.5rem">BROWSE ALL SECTORS</button>
                                  </div>
                                </div>
                              </div>

          </div>
        </div>
      </section>


    

</asp:Content>

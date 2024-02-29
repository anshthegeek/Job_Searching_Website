<%@ Page Title="" Language="C#" MasterPageFile="~/JobRecuritor/JobRecuritor.Master" AutoEventWireup="true" CodeBehind="HomeJobRecruiter.aspx.cs" Inherits="Master_Page_loginRegister.JobRecuritor.HomeJobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <style>
       .som3{
background:linear-gradient(rgba(4,11,75,0.719),rgb(64, 67, 65, 0.73)), url(search2.png)no-repeat;
    background-size:cover;
    height:90vh;
    width:1500px;        }

       
    </style>


       <div class="som3">
  <section id="header" class="header1" style="width:1493px">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:33px">
                <li class="last"><a href="HomeJobRecruiter.aspx" class="active">Profile</a></li>
                <li class="last"><a href="JobPostWeb.aspx">Job Post</a></li>
                <li class="last"><a href="changepasswordJobRecruiter.aspx">Change Password</></li>
                <li><a href="../About_Contact/AboutRecruiter.aspx">About</a></li>
                <li><a href="../About_Contact/ContactRecruiter.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section>
   
     <table style="position:relative;top:249px;left:-32px">
        <tr>
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-7px;font-weight:bold">Company Name :</td>
            <td style="position:relative;top:2px"><asp:Label ID="lblname" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </tr>

     <tr>
         <td style="font-size:1.5rem;position:relative;left:-12px;top:-19px;font-weight:bold">company Url :</td>
         <td style="position:relative;top:-9px"><asp:Label ID="lblurl" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
     </tr>



         
         <tr style="position:relative;top:-19px">
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-10px;font-weight:bold">Address :</td>
            <td><asp:Label ID="lblcountry" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </tr>


                   <tr style="position:relative;top:-13px">
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-29px;font-weight:bold">Email :</td>
            <td style="position:relative;top:-19px"><asp:Label ID="lblemail" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </>

         <tr style="position:relative;top:-43px">
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-10px;font-weight:bold">Password :</td>
            <td><asp:Label ID="lblpassword" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </tr>

         
    </table>




            <div class="col-lg-7">
              <h1 style="font-size:8rem;position:relative;top:-129px; left:-423px; font-size:6rem;color:aliceblue;font-weight:bold" >Your Dream <br> 
               Job is Waiting</h1>
               
            </div>
            <h4  style="font-size:2rem;position:relative;top:-133px; left:-423px;">Remote jobs for anyone,anywhere</h4>
           <h3 style="position:relative;top:-43px;left:-524px;text-align:center;width:209px;height:49px;padding-top:12px" class="btn3"><a style="text-decoration:none" href="JobPostWeb.aspx">Post a JOB</a></h3>



           </div>



     <section id="blog">
 


    <div class="blogbox">
      <div class="blog-img" id="img1" id="img2">
        <img src="java.png" alt="">
      </div>

      <div class="blog-details" id="first1">
        <h2 class="se">The Cotton-Jersey Zip-Up Hoodies</h2>
          <footer class="se neww neww2">Kickstarter man braid godard coloring book. Reclette waistcoat selfies yr wolf chartreuse
            irony,
            godard...
          </footer>

          <a href="#" class="a1 se">CONTINUE READING</a>
          <a href="" class="a2"></a>
      </div>

      <h1 class="se" id="hfirst">13/01</h1>
    </div>
    

    

    
    <div class="blogbox">
      <div class="blog-img" id="img1" id="img2" id="img3">
        <img src="dotnet.png" alt="">
      </div>

      <div class="blog-details" class="details1">
        <h2 class="se se2 nh2">How to Style a Quiff</h2>
          <footer class="se se2 neww">Kickstarter man braid godard coloring book. Reclette waistcoat selfies yr wolf chartreuse
            irony,
            godard...
          </footer>

          <a href="#" class="a1 se se2 con">CONTINUE READING</a>
          <a href="" class="a2 a3"></a>
      </div>


      <h1 class="se" id="hfirst" class="se2">13/01</h1>
    </div>






    <div class="blogbox">
      <div class="blog-img" id="img1" id="img2" id="img3">
        <img src="data.png" alt="">
      </div>

      <div class="blog-details" class="details1">
        <h2 class="se se2 nh2">How to Style a Quiff</h2>
          <footer class="se se2 neww">Kickstarter man braid godard coloring book. Reclette waistcoat selfies yr wolf chartreuse
            irony,
            godard...
          </footer>

          <a href="#" class="a1 se se2 con">CONTINUE READING</a>
          <a href="" class="a2 a3"></a>
      </div>


      <h1 class="se" id="hfirst" class="se2">13/01</h1>
    </div>




    <div class="blogbox">
      <div class="blog-img" id="img1" id="img2" id="img3">
        <img src="fullstack.png" alt="">
      </div>

      <div class="blog-details" class="details1">
        <h2 class="se se2 nh2">How to Style a Quiff</h2>
          <footer class="se se2 neww">Kickstarter man braid godard coloring book. Reclette waistcoat selfies yr wolf chartreuse
            irony,
            godard...
          </footer>

          <a href="#" class="a1 se se2 con">CONTINUE READING</a>
          <a href="" class="a2 a3"></a>
      </div>


      <h1 class="se" id="hfirst" class="se2">13/01</h1>
    </div>




    <div class="blogbox">
      <div class="blog-img" id="img1" id="img2" id="img3">
        <img src="software.png" alt="">
      </div>

      <div class="blog-details" class="details1">
        <h2 class="se se2 nh2">How to Style a Quiff</h2>
          <footer class="se se2 neww">Kickstarter man braid godard coloring book. Reclette waistcoat selfies yr wolf chartreuse
            irony,
            godard...
          </footer>

          <a href="#" class="a1 se se2 con">CONTINUE READING</a>
          <a href="" class="a2 a3"></a>
      </div>


      <h1 class="se" id="hfirst" class="se2">13/01</h1>
    </div>









  </section>




      <section id="newsletter" class="section-p1" class="section-m1">
    <div class="newstext">
      <h4>Sign Up For Job Search</h4>
      <h5>Get E-mail updates about our latest shop and <span>special offers.</span></h5>
    </div>
   
  </section>



    
</asp:Content>

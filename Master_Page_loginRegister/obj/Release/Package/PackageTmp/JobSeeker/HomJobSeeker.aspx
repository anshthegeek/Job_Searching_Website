<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker.Master" AutoEventWireup="true" CodeBehind="HomJobSeeker.aspx.cs" Inherits="Master_Page_loginRegister.JobSeeker.HomJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <style>
       .som3{
background: url(search.png)no-repeat;
    background-size:cover;
    height:90vh;
    width:1500px;        }

       
    </style>

   
    
    
  <section id="header" class="header1">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:33px">
                <li class="last"><a href="../JobSeeker/HomJobSeeker.aspx" class="active">Profile</a></li>
                <li class="last"><a href="../About_Contact/SearchLocation_2.aspx">Jobs</a></li>
                <li class="last"><a href="../JobSeeker/changepasswordJobSeeker.aspx">Change Password</></li>
                <li><a href="../About_Contact/AboutWebPage.aspx">About</a></li>
                <li><a href="../About_Contact/ContactWebpage.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section>





        <div class="som3">

     <table style="width:89px; position:relative; right:-23px;top:203px;color:aliceblue">
        <tr>
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-10px;font-weight:bold">Name:</td>
            <td><asp:Label Id="lblname" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </tr>



                   <tr style="margin-top:59px;position:relative;top:-12px">
            <td style="font-size:1.5rem;position:relative;left:-12px;top:-10px;font-weight:bold">DOB :</td>
                <td><asp:Label Id="lbldob" runat="server" Width="293px" Font-Bold="true" Height="37px"></asp:Label></td>
        </tr>
      

         
          <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-26px;font-weight:bold">Gender:</td>
            <td style="position:relative;top:-28px"><asp:Label Id="lblgender" runat="server"  Width="293px" Font-Bold="true"></asp:Label></td>
        </tr>
      

         <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-33px;font-weight:bold">Email :</td>
            <td style="position:relative;top:-24px"><asp:Label ID="lblemail" runat="server"  Width="293px" Height="37px"  Font-Bold="true"></asp:Label></td>
        </tr>     

         <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-43px;font-weight:bold">Password:</td>
            <td style="position:relative;top:-34px"><asp:Label ID="lblpassword" runat="server" Width="293px" Height="37px"  Font-Bold="true"></asp:Label></td>
        </tr>

          
          <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-53px;font-weight:bold">Qualification:</td>
            <td style="position:relative;top:-43px"><asp:Label Id="lblquali" runat="server" Width="293px" Height="37px"  Font-Bold="true"></asp:Label></td>
        </tr>

          <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-53px;font-weight:bold">JobProfile :</td>
            <td style="position:relative;top:-53px"><asp:Label Id="lblprofile" runat="server" Font-Bold="true"></asp:Label></td>
        </tr>

         <tr>
            <td style="font-size:1rem;position:relative;left:-14px;top:-53px;font-weight:bold">JobProfile Skill :</td>
            <td style="position:relative;top:-53px"><asp:Label Id="lblskill" runat="server"></asp:Label></td>
        </tr>


          <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-53px;font-weight:bold">Image:</td>
              <td  style="position:relative;top:-53px"><asp:Image ID="imgseeker" runat="server"  Width="100px"  Font-Bold="true" Height="70px" ></asp:Image></td>
        </tr>


         
          <tr>
            <td style="font-size:1.5rem;position:relative;left:-14px;top:-53px;font-weight:bold">Resume:</td>
              <td style="position:relative;top:-53px"><asp:LinkButton ID="resumebtn" Font-Bold="true" runat="server" OnClick="resumebtn_Click"></asp:LinkButton></td>
        </tr>





          <tr>
             <td style="font-size:1.5rem;position:relative;left:-14px;top:-53px;font-weight:bold">Address :</td>
            <td style="position:relative;top:-53px"><asp:Label Id="lblcountry" runat="server"  Font-Bold="true"></asp:Label></td>
        </tr>

          <tr>
                      <td></td>
            <td  style="position:relative;top:-53px"><asp:Button Id="btnedit" runat="server" class="btn3" Width="104px"  Height="38px" Text="Edit" OnClick="btnedit_Click"/></td>
        </tr>

         

    </table>
            <div class="col-lg-7">
              <h1 style="font-size:8rem;position:relative;top:-303px; left:-423px; font-size:6rem;color:aliceblue;font-weight:bold" >Your Dream <br> 
               Job is Waiting</h1>
               
            </div>
            <h4  style="font-size:2rem;position:relative;top:-303px; left:-423px;">Remote jobs for anyone,anywhere</h4>
           <h3 style="position:relative;top:-243px;left:-524px;text-align:center;width:209px;height:49px;padding-top:12px" class="btn3"><a style="text-decoration:none" href="../About_Contact/SearchLocation_2.aspx">Apply JOB</a></h3>


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
      <h4>Sign Up For Newsletters</h4>
      <h5>Get E-mail updates about our latest shop and <span>special offers.</span></h5>
    </div>
   
  </section>

  

</asp:Content>

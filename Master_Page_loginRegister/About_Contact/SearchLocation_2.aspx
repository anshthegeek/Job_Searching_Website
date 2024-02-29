<%@ Page Title="" Language="C#" MasterPageFile="~/About_Contact/searchLOcation_2Master.Master" AutoEventWireup="true" CodeBehind="SearchLocation_2.aspx.cs" Inherits="Master_Page_loginRegister.About_Contact.SearchLocation_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

     <style>

       .sear{
background:url(search.png)no-repeat;
    background-size:cover;
    min-height:95vh;
    width:100%;
    background-color: rgb(148, 150, 150);      

       }

       
    </style>

     <section id="header" class="header1">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:-13px">
                 <li class="last"><a href="../JobSeeker/HomJobSeeker.aspx">Profile</a></li>
                <li class="last"><a href="SearchLocation_2.aspx" class="active">Jobs</a></li>
                <li class="last"><a href="../JobSeeker/changepasswordJobSeeker.aspx">Change Password</></li>
                <li><a href="AboutWebPage.aspx">About</a></li>
                <li><a href="ContactWebpage.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>
            </ul>
        </div>

             </section>


     <section class="main py-5 sear">
        <div class="container py-5">
          <div class="row">
            <div class="col-lg-7">
              <h1 style="font-size:6rem;position:relative;top:52px;font-family:cursive">Find Your Perfect <br> 
                 Jobs Match</h1>
                                <p style="position:relative;top:41px;font-size:1.2rem;font-family:cursive">Find Jobs,Employment & Carrer opportunities</p>

             <h3 style="position:relative;top:97px;left:-29px;text-align:center;width:209px;height:49px;padding-top:12px;" class="btn3"><a style="text-decoration:none" href="../JobSeeker/JobPostList.aspx">Find Your Job</a></h3>

            </div>
          </div>
        </div>
      </section>


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



    
    <!-----RECENT JOB SECTION RECENT JOB SECTION RECENT JOB SECTION ----->

<div class="width-100 recent-job" style="background-color:white;position:relative;top:-82px">
  <div class="container" style="background-color:#f9f9f9;position:relative;left:72px">
    <h2 class="recent-job-heading" style="position:relative;left:-89px">RECENT JOB</h2>
    <p class="recent-job-sub-heading" style="position:relative;top:-12px;left:-89px">Get the list of all recent jobs</p>
    <!-----JOB LIST----->
        <div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">HTML Designer</h4>
          <p class="job-company" style="position:relative;top:-12px">Dezven Software Solution <i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative;top:-42px;width:89px;text-align:center;height:42px;text-decoration:none">Apply Now</a>
        </div>
      </div>
    </div>

    <!-----JOB LIST------>
    <div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">CSS Designer</h4>
          <p class="job-company" style="position:relative;top:-12px">Dezven Group <i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative; text-decoration:none; top:-42px;width:89px;text-align:center;height:42px">Apply Now</a>
        </div>
      </div>
    </div>


    <!-----JOB LIST----->
  <div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">BootStrap Debveloper</h4>
          <p class="job-company" style="position:relative;top:-12px">Apple Incorporation<i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative;top:-42px;text-decoration:none; width:89px;text-align:center;height:42px">Apply Now</a>
        </div>
      </div>
    </div>

    <!-----JOB LIST----->
 <div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">Javascript Developer</h4>
          <p class="job-company" style="position:relative;top:-12px">Wipro Software Sol<i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative;top:-42px;width:89px; text-decoration:none; text-align:center;height:42px">Apply Now</a>
        </div>
      </div>
    </div>

    <!-----JOB LIST----->
<div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">Graphic Designer</h4>
          <p class="job-company" style="position:relative;top:-12px">Microsoft Software INC <i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative;top:-42px; text-decoration:none; width:89px;text-align:center;height:42px">Apply Now</a>
        </div>
      </div>
    </div>

    <!-----JOB LIST------>
  <div class="width-50">
      <div class="recent-job-list" style="background-color:#f9f9f9;width:453px;height:219px"> 
        <div class="width-100">
          <h4 class="job-title">Asp .Net Developer</h4>
          <p class="job-company" style="position:relative;top:-12px">Cred Software Solution <i class="fa fa-star" aria-hidden="true"></i> | 234 Reviews </p>
        </div>
          <div style="display:flex;position:relative;top:-23px">
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-briefcase" aria-hidden="true"></i> 1 to 4 Years
        </div>
        <div class="width-33" style="padding-right:12px">
          <i class="fa fa-inr" aria-hidden="true"></i> No disclosed
        </div>
        <div class="width-33">
          <i class="fa fa-map-marker" aria-hidden="true"></i> Pune
        </div>
              </div>
        <div class="width-100">
          <p class="job-skill"  style="position:relative;top:-43px">
            <b>Skills : </b>HTML, CSS, JAVASCRIPT, JQUERY, BOOTSTRAP,<br /> PHOTOSHOP
          </p>
        </div>
        <div class="width-100">
          <a href="../JobSeeker/JobPostList.aspx" class="job-apply-button btn3" style="position:relative;top:-42px;width:89px; text-decoration:none; text-align:center;height:42px">Apply Now</a>
        </div>
      </div>
    </div>



  </div>
</div>


    
  

<!-------FEATURE SECTION FEATURE SECTION FEATURE SECTION------->
<div class="width-100 feature-sect">
      <br />
    <br />
  <div class="container" style="display:flex">
    <div class="width-50">
      <div class="feature-panel">
        <img src="lookingforjob.png" class="feature-img">
        <h4 class="feature-title">DO YOU WANT TO FIND A JOB ?</h4>
        <p class="feature-desc" style="position:relative;top:12px">It look like readable English. Many desktop publishing packagesand web page editors now use Lorem Ipsum as their default model text</p>
        <button class="feature-btn btn3" style="height:44px;width:113px"><a href="../JobSeeker/JobPostList.aspx" style="text-decoration:none;color:white">Find Job</a></button>
      </div>
    </div>
    <div class="width-50">
      <div class="feature-panel">
        <img src="hiring.png" class="feature-img">
        <h4 class="feature-title"> ARE YOU LOOKING FOR A CANDIDATE ?</h4>
        <p class="feature-desc" style="position:relative;top:12px">It look like readable English. Many desktop publishing packagesand web page editors now use Lorem Ipsum as their default model text</p>
        <button class="feature-btn btn3" style="height:44px;width:113px"><a href="../JobSeeker/JobPostList.aspx" style="text-decoration:none;color:white">Candidates</a></button>
      </div>
    </div>
  </div>
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

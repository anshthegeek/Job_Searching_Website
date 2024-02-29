<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobSeeker.Master" AutoEventWireup="true" CodeBehind="JobPostList.aspx.cs" Inherits="Master_Page_loginRegister.JobSeeker.JobPostList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
 
 <style>
     .sem{
     }

      .com{
          padding:20px;
          font-size:2rem;
          font-family:cursive;
      }

      .pad{
             position:relative;
             left:21px;
      }

       .pad1{
             position:relative;
             left:21px;
      }

        .apply1{
             position:relative;
             left:12px;
             width:109px;
             height:53px;
      }
 </style>




      <section id="header" class="header1">
                    <a class="navbar-brand" href="#" style="font-size:3rem">Job Finder</a>

        <div>
            <ul id="navbar" class="navv"  style="position:relative; left:33px">
                <li class="last"><a href="../JobSeeker/HomJobSeeker.aspx">Profile</a></li>
                <li class="last"><a href="JobPostList.aspx"  class="active">Apply For Jobs</a></li>
                <li class="last"><a href="../JobSeeker/changepasswordJobSeeker.aspx">Change Password</></li>
                <li><a href="../About_Contact/AboutWebPage.aspx">About</a></li>
                <li><a href="../About_Contact/ContactWebpage.aspx">Contact </a></li>
                                <li class="last"><a href="../MAIN_PAGE.aspx">Logout</a></li>

            </ul>
        </div>


    </section>







<section id="page-header" class="about-header" style="width:1513px;background:url(lookingjob1.png)no-repeat">
         


        <h2>LOOKING FOR A JOB?</h2>

    <p style="font-family:cursive">THERE'S NO BETTER TO PLACE START</p>


    <!-- <img src="imagehero2.png.jpg" id="imghero" alt=""> -->
  </section>


 
    <table style="position:relative;left:-119px">

        <tr style="position:relative;left:103px;font-size:2rem;top:12px;font-weight:bold">
            <td>Job Location :
                <asp:DropDownList ID="txtloc" runat="server" Width="200px"></asp:DropDownList>
                               Job Profile: <asp:DropDownList ID="txtjobprofile" runat="server" width="200px"></asp:DropDownList>

                <asp:Button ID="btnsearch" runat="server" Text="Search"  Width="103px" class="btn3" Height="53px" OnClick="btnsearch_Click" />
            </td>
        </tr>
      

        <tr style="position:relative;left:103px;top:32px">
                <td>
                           <asp:GridView ID="gvjobpost" runat="server" OnRowCommand="gvjobpost_RowCommand"  AutoGenerateColumns="False" CellPadding="21" CellSpacing="37"  ForeColor ="#333333" GridLines="None">
                               <AlternatingRowStyle BackColor="White" ForeColor="#284775" Height="123px" CssClass="pad" Font-Size="15px"/>
                               <Columns>
                                   <asp:TemplateField HeaderText="Id" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("jp_id") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText="Company's" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("jr_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Profile" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("jpr_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>
                                  
                                     <asp:TemplateField HeaderText="Required Exp" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("minexp") %> year  -  <%#Eval("maxexp") %> year

                                       </ItemTemplate>
                                   </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Offered Salary" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                         Rs. <%#Eval("maxsalary")%> - Rs. <%#Eval("maxsalary") %>

                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Location" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("loc_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Vacancies" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("noofvacancy") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Comments" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("comments") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Date" HeaderStyle-CssClass="com">
                                       <ItemTemplate>
                                           <%#Eval("inserted_date") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                     <asp:TemplateField>
                                       <ItemTemplate>
<asp:button ID="btnapply" runat="server" CssClass="apply1 btn3" Text="Apply" CommandArgument='<%#Eval("jp_id") %>'/>                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                     
                                        
                               </Columns>
                              
                               <EditRowStyle BackColor="#999999"/>
                               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"  />
                               <HeaderStyle BackColor="#999966" Font-Bold="True" ForeColor="White" Font-Size="15px" />
                               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="15px" CssClass="pad1"/>
                               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                               <SortedAscendingCellStyle BackColor="#E9E7E2"/>
                               <SortedAscendingHeaderStyle BackColor="#506C8C"  />
                               <SortedDescendingCellStyle BackColor="#FFFDF8"  />
                               <SortedDescendingHeaderStyle BackColor="#6F8DAE"/>
                           </asp:GridView>
                </td>
        </tr>
    </table>



       



</asp:Content>

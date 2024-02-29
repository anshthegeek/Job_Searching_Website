<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobSeeker.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table>
        <tr>
                <td>
                           <asp:GridView ID="gvseeker" runat="server" OnRowCommand="gvseeker_RowCommand" AutoGenerateColumns="false">
                               <Columns>
                                   <asp:TemplateField HeaderText="JobSeeker Id">
                                       <ItemTemplate>
                                           <%#Eval("js_id") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobSeeker Name">
                                       <ItemTemplate>
                                           <%#Eval("js_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                      <asp:TemplateField HeaderText="Date of Birth">
                                       <ItemTemplate>
                                           <%#Eval("js_date") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>



                                     <asp:TemplateField HeaderText="JobSeeker Gender">
                                       <ItemTemplate>
                                           <%#Eval("g_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                         <asp:TemplateField HeaderText="JobSeeker Qualification">
                                       <ItemTemplate>
                                           <%#Eval("q_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                      <asp:TemplateField HeaderText="JobSeeker JobProfile">
                                       <ItemTemplate>
                                        
                                           <%#Eval("jpr_name") %>

                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="JobSeeker Skill">
                                       <ItemTemplate>
                                        
                                           <%#Eval("js_profileskill") %>

                                       </ItemTemplate>
                                   </asp:TemplateField>

                                      <asp:TemplateField HeaderText="JobSeeker Address">
                                       <ItemTemplate>
                          <%#Eval("sc_name") %>,<%#Eval("s_name") %>,<%#Eval("c_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     
                                     <asp:TemplateField HeaderText="JobSeeker Email">
                                       <ItemTemplate>
                                           <%#Eval("js_email") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>



                                      <asp:TemplateField HeaderText="JobSeeker Email">
                                       <ItemTemplate>
              <asp:Image ID="imgseeker" runat="server" Width="70px" Height="40px" ImageUrl='<%#Eval("js_image","~/JobSeeker/JobSeeker_Image/{0}") %>' />
                                             </ItemTemplate>
                                   </asp:TemplateField>

                                
                                       <asp:TemplateField HeaderText="JobSeeker Resume">
                                       <ItemTemplate>
                    <asp:LinkButton ID="btnresume" runat="server" Text='<%#Eval("js_resume") %>'  CommandName="R" commandArgument='<%#Eval("js_resume") %>'></asp:LinkButton>                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                 

                                     <asp:TemplateField HeaderText="Inserted_Date">
                                       <ItemTemplate>
                                           <%#Eval("inserted_date") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                     

                                        
                                 <asp:TemplateField>
                                   <ItemTemplate>
     <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()=="0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("js_id") %>' />
                                  </ItemTemplate>
                                </asp:TemplateField>

                               </Columns>
                           </asp:GridView>
                </td>
        </tr>
    </table>



</asp:Content>

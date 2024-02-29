<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="manageJobbPost.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.manageJobbPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    
    <table>
        <tr>
                <td>
                           <asp:GridView ID="gvjobpost" runat="server" OnRowCommand="gvjobpost_RowCommand"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                               <Columns>
                                   <asp:TemplateField HeaderText="Job Id ">
                                       <ItemTemplate>
                                           <%#Eval("jp_id") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobRecruiter Name ">
                                       <ItemTemplate>
                                           <%#Eval("jr_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="JobProfile Name ">
                                       <ItemTemplate>
                                           <%#Eval("jpr_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Required Exp">
                                       <ItemTemplate>
                                           <%#Eval("minexp") %> year  -  <%#Eval("maxexp") %> year

                                       </ItemTemplate>
                                   </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Offered Salary">
                                       <ItemTemplate>
                                         Rs. <%#Eval("maxsalary")%> - Rs. <%#Eval("maxsalary") %>

                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Job Location">
                                       <ItemTemplate>
                                           <%#Eval("loc_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="No. of vacancies">
                                       <ItemTemplate>
                                           <%#Eval("noofvacancy") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Comments">
                                       <ItemTemplate>
                                           <%#Eval("comments") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="JobPost Date">
                                       <ItemTemplate>
                                           <%#Eval("inserted_date") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                     
                                        
                                 <asp:TemplateField>
                                   <ItemTemplate>
     <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()=="0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("jp_id") %>' />
                                  </ItemTemplate>
                                </asp:TemplateField>


                                        
                               </Columns>
                               <EditRowStyle BackColor="#999999" />
                               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                               <SortedAscendingCellStyle BackColor="#E9E7E2" />
                               <SortedAscendingHeaderStyle BackColor="#506C8C" />
                               <SortedDescendingCellStyle BackColor="#FFFDF8" />
                               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                           </asp:GridView>
                </td>
        </tr>
    </table>




</asp:Content>

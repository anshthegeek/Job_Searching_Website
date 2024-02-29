<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobRecuiter.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageJobRecuiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table>
        <tr>
                <td>
                           <asp:GridView ID="gvrecruiter" runat="server" OnRowCommand="gvrecruiter_RowCommand" AutoGenerateColumns="false">
                               <Columns>
                                   <asp:TemplateField HeaderText="JobRecruiter Id">
                                       <ItemTemplate>
                                           <%#Eval("jr_id") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobRecruiter Name">
                                       <ItemTemplate>
                                           <%#Eval("jr_name") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobRecruiter URL">
                                       <ItemTemplate>
                                           <%#Eval("jr_url") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobRecruiter Email">
                                       <ItemTemplate>
                                           <%#Eval("jr_email") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                     <asp:TemplateField HeaderText="JobRecruiter Password">
                                       <ItemTemplate>
                                           <%#Eval("jr_password") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Inserted_Date">
                                       <ItemTemplate>
                                           <%#Eval("inserted_date") %>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   
                                            
                                 <asp:TemplateField>
                                   <ItemTemplate>
     <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()=="0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("jr_id") %>' />
                                  </ItemTemplate>
                                </asp:TemplateField>

                               </Columns>
                           </asp:GridView>
                </td>
        </tr>
    </table>



</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="managecountrystate.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.managecountrystate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    
    <table>
        <tr>
            <td>Job Country :</td>
            <td><asp:TextBox ID="managecountry" runat="server"></asp:TextBox></td>
        </tr>





        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanagecountry" runat="server" OnRowCommand="gvmanagecountry_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Country Id">
                        <ItemTemplate><%#Eval("c_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Country Name">
                        <ItemTemplate><%#Eval("c_name") %></ItemTemplate>
                    </asp:TemplateField>


                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelquali" runat="server" Text="Remove" CommandArgument='<%#Eval("c_id") %>'/></ItemTemplate>

                           </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>





    
   

</asp:Content>

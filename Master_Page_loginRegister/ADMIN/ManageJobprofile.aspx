<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobprofile.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageJobprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



     <table>
        <tr>
            <td>Job Profile</td>
            <td><asp:TextBox ID="managepro" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanagepro" runat="server" OnRowCommand="gvmanagepro_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="JobProfile Id">
                        <ItemTemplate><%#Eval("jpr_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobProfile Name">
                        <ItemTemplate><%#Eval("jpr_name") %></ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelpro" runat="server" Text="Remove" CommandArgument='<%#Eval("jpr_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>




</asp:Content>

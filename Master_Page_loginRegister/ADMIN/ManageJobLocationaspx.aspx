<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobLocationaspx.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageJobLocationaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <table>
        <tr>
            <td>Job Location</td>
            <td><asp:TextBox ID="manageloc" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanageloc" runat="server" OnRowCommand="gvmanageloc_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="JobLocation Id">
                        <ItemTemplate><%#Eval("loc_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobLocation Name">
                        <ItemTemplate><%#Eval("loc_name") %></ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelloc" runat="server" Text="Remove" CommandArgument='<%#Eval("loc_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>



</asp:Content>

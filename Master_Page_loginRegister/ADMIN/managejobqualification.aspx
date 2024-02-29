<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="managejobqualification.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.managejobqualification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    
    <table>
        <tr>
            <td>Job Qualification</td>
            <td><asp:TextBox ID="managequali" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanagequali" runat="server" OnRowCommand="gvmanagequali_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="JobQualification Id">
                        <ItemTemplate><%#Eval("q_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobLocation Name">
                        <ItemTemplate><%#Eval("q_name") %></ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelquali" runat="server" Text="Remove" CommandArgument='<%#Eval("q_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>



</asp:Content>

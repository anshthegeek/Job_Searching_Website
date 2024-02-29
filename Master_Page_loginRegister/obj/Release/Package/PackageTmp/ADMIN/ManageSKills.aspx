<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageSKills.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageSKills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




     
    <table>
        <tr>
            <td>JobProfile</td>
            <td><asp:DropDownList ID="manageprof" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>Skills</td>
            <td><asp:TextBox ID="manageskills" runat="server"></asp:TextBox></td>
        </tr>




        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanageskills" runat="server" OnRowCommand="gvmanageskills_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="JobSkill Id">
                        <ItemTemplate><%#Eval("sk_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Profile Name">
                        <ItemTemplate><%#Eval("jpr_name") %></ItemTemplate>
                    </asp:TemplateField>


                    
                    <asp:TemplateField HeaderText="Skill Name">
                        <ItemTemplate><%#Eval("sk_name") %></ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelquali" runat="server" Text="Remove" CommandArgument='<%#Eval("sk_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>



</asp:Content>

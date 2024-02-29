<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="manageState.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.manageState" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    

     
    <table>
        <tr>
            <td>Country</td>
            <td><asp:DropDownList ID="managecountry" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>State</td>
            <td><asp:TextBox ID="managestate" runat="server"></asp:TextBox></td>
        </tr>

        


          



        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanagestate" runat="server" OnRowCommand="gvmanagestate_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="State Id">
                        <ItemTemplate><%#Eval("s_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Country">
                        <ItemTemplate><%#Eval("c_name") %></ItemTemplate>
                    </asp:TemplateField>



                    
                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate><%#Eval("s_name") %></ItemTemplate>
                    </asp:TemplateField>



                  

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelquali" runat="server" Text="Remove" CommandArgument='<%#Eval("s_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>


</asp:Content>

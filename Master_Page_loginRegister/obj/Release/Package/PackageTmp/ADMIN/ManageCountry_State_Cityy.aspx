<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCountry_State_Cityy.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.ManageCountry_State_Cityy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    


     
    <table>
        <tr>
            <td>Country</td>
            <td><asp:DropDownList ID="managecountry" runat="server" OnSelectedIndexChanged="managecountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>State</td>
            <td><asp:DropDownList ID="managestate" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>City</td>
            <td><asp:TextBox ID="managecity" runat="server"></asp:TextBox></td>
        </tr>


          



        <tr>
            <td></td>
            <td><asp:Button ID="btnnmanage" runat="server" Text="Save" OnClick="btnnmanage_Click" />
            </td>
        </tr>


        <tr>
                <td></td>
            <td><asp:GridView ID="gvmanagecity" runat="server" OnRowCommand="gvmanagecity_RowCommand" AutoGenerateColumnS="false">
                <Columns>
                    <asp:TemplateField HeaderText="City Id">
                        <ItemTemplate><%#Eval("sc_id") %></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Country Name">
                        <ItemTemplate><%#Eval("c_name") %></ItemTemplate>
                    </asp:TemplateField>



                    
                    <asp:TemplateField HeaderText="State Name">
                        <ItemTemplate><%#Eval("s_name") %></ItemTemplate>
                    </asp:TemplateField>


                    
                    <asp:TemplateField HeaderText="City Name">
                        <ItemTemplate><%#Eval("sc_name") %></ItemTemplate>
                    </asp:TemplateField>

                  

                       <asp:TemplateField>
                        <ItemTemplate><asp:Button ID="btndelquali" runat="server" Text="Remove" CommandArgument='<%#Eval("sc_id") %>'/></ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                </asp:GridView> </td>
        </tr>
    </table>



</asp:Content>

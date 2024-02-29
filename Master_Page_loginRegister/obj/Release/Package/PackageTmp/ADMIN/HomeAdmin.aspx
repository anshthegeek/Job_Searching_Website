<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="Master_Page_loginRegister.ADMIN.HomeAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


      <table>
        <tr>
            <td>Name :</td>
            <td><asp:Label Id="lblname" runat="server"></asp:Label></td>
        </tr>
         
          <tr>
            <td>Gender :</td>
            <td><asp:Label Id="lblgender" runat="server"></asp:Label></td>
        </tr>
      

         <tr>
            <td>Email :</td>
            <td><asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>

         <tr>
            <td>Password :</td>
            <td><asp:Label ID="lblpassword" runat="server"></asp:Label></td>
        </tr>

    </table>


</asp:Content>

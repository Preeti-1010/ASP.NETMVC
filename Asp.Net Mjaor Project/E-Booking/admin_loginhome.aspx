<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_loginhome.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
         <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Admin Id:" Font-Bold="True"></asp:Label></td>
                <td><asp:TextBox ID="txtadminid" runat="server"></asp:TextBox></td></tr>
            <tr><td><asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True"></asp:Label></td>
                <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td></tr>
            <tr><td colspan="2" style="text-align:center">
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" BackColor="Firebrick" BorderColor="Firebrick" Font-Bold="True" ForeColor="White" /></td>

            </tr>
            <tr><td colspan="2" style="text-align:center">
                <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="firebrick"></asp:Label></td>

            </tr>
        </table>
        
    </center>
</asp:Content>


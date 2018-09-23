<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_deleteevent.aspx.cs" Inherits="admin_deleteevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 570px; height: 152px">
       <tr><td> Event Image:</td> <td><asp:FileUpload ID="FileUpload1" runat="server" /></td> </tr>
<br />
     <tr><td> Event Title:</td> <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td> </tr><br />
    <tr><td>  Event Description: </td> <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td> </tr><br />
    <tr><td>  Event Date:</td> <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td> </tr><br />
     <tr><td> Event Time:</td> <td> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td> </tr><br 
        <tr><td> Event Address:</td> <td> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td> </tr><br />
        <tr><td> Event Price:</td> <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td> </tr><br />
       <tr><td> </td> <td> <asp:Button ID="btndelete" runat="server" Text="Delete" Height="26px" Width="72px" OnClick="btndelete_Click" /></td> </tr><br />
    </table>
</asp:Content>


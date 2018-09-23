<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_addevent.aspx.cs" Inherits="admin_admin_event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table style="width: 570px; height: 152px">
       <tr><td> Event Image:</td> <td><asp:FileUpload ID="imgload" runat="server" /></td> <td>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
<br />
     <tr><td> id:</td> <td> <asp:TextBox ID="txtid" runat="server"  MaxLength="5"></asp:TextBox></td> 
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter only Digits" ControlToValidate="txtid"  ForeColor="Red"></asp:RequiredFieldValidator></td>
     </tr><br />
     <tr><td> Event Title:</td> <td> <asp:TextBox ID="txttitle" runat="server" ></asp:TextBox></td> </tr><br />
    <tr><td>  Event Description: </td> <td><asp:TextBox ID="txtdes" runat="server" ></asp:TextBox></td> </tr><br />
    <tr><td>  Event Date:</td> <td> <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox></td> </tr><br />
     <tr><td> Event Time:</td> <td> <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox></td> </tr><br />
       <tr><td> Event Category:</td> <td> <asp:TextBox ID="txtcat" runat="server"></asp:TextBox></td> </tr><br />
     <tr><td> Event Address:</td> <td> <asp:TextBox ID="txtadd" runat="server"></asp:TextBox></td> </tr><br />
    <tr><td> Event Price:</td> <td> <asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td> </tr><br />
   
       <tr><td> </td> <td> <asp:Button ID="btnadd" runat="server" Text="Add" Height="26px" Width="72px"  OnClick="btnadd_Click" /></td> </tr><br />
       <tr><td><asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label></td></tr>
   </table>
</asp:Content>


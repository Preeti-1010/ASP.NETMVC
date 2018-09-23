<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_addsports.aspx.cs" Inherits="admin_sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 570px; height: 152px">
       <tr><td> Event Image:</td> <td><asp:FileUpload ID="imgload" runat="server" /></td> <td>
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
<br />
     <tr><td> id:</td> <td> <asp:TextBox ID="txtid" runat="server" TextMode="Number" MaxLength="5"></asp:TextBox></td> 
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter only Digits" ControlToValidate="txtid" ForeColor="Red"></asp:RequiredFieldValidator></td>
     </tr><br />
     <tr><td> Sports Title:</td> <td> <asp:TextBox ID="txttitle" runat="server" ></asp:TextBox></td> </tr><br />
    <tr><td>  Sports Description: </td> <td><asp:TextBox ID="txtdes" runat="server" ></asp:TextBox></td> </tr><br />
    <tr><td>  Sports Date:</td> <td> <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox></td> </tr><br />
     <tr><td> Sports Time:</td> <td> <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox></td> </tr><br />
       <tr><td> Sports Category:</td> <td> <asp:TextBox ID="txtcat" runat="server"></asp:TextBox></td> </tr><br />
     <tr><td> Sport Address:</td> <td> <asp:TextBox ID="txtadd" runat="server"></asp:TextBox></td> </tr><br />
    <tr><td> Sport Price:</td> <td> <asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td> </tr><br />
   
       <tr><td> </td> <td> <asp:Button ID="btnadd" runat="server" Text="Add" Height="26px" Width="72px" OnClick="btnadd_Click"/></td> </tr><br />
       <tr><td><asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label></td></tr>
   </table>
</asp:Content>


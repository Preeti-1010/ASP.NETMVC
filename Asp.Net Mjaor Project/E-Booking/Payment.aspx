<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center><table><h3>Payment Mode:</h3>
        <tr><td>Debit Card<asp:RadioButton ID="rbt1" runat="server" GroupName="r1" OnCheckedChanged="rbt1_CheckedChanged" AutoPostBack="True" />
        </td>
        <td>Netbanking<asp:RadioButton ID="rbt2" runat="server" GroupName="r1" OnCheckedChanged="rbt2_CheckedChanged" AutoPostBack="True" />
       </td>
</tr> </table></center>
</asp:Content>


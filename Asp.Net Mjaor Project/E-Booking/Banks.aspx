<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="Banks.aspx.cs" Inherits="DebitCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div><center><div><h2>
        List Of Banks:
                 </h2></div>
        <table>
            <tr>
                <td><asp:RadioButton ID="rbt1" runat="server" GroupName="r1" AutoPostBack="True" OnCheckedChanged="rbt1_CheckedChanged"  />ICICI Bank</td>
                <td><asp:RadioButton ID="rbt2" runat="server" GroupName="r1" AutoPostBack="True" OnCheckedChanged="rbt2_CheckedChanged"  />UNION BANK OF INDIA</td>
            </tr>
            <tr>
                <td><asp:RadioButton ID="rbt3" runat="server" GroupName="r1" AutoPostBack="True" OnCheckedChanged="rbt3_CheckedChanged"  />ALLAHABAD Bank</td>
                <td><asp:RadioButton ID="rbt4" runat="server" GroupName="r1" AutoPostBack="True" OnCheckedChanged="rbt4_CheckedChanged"  />AXIS BANK</td>
            </tr>
            
        </table>
       </center>
    </div>

</asp:Content>


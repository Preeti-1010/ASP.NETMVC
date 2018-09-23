<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="DebitCard.aspx.cs" Inherits="DebitCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table style=" border-color:red; border:1px" id="t5">
        <tr><td> <h3><asp:Label ID="lblbill" runat="server"  Text="Billing Information:-"></asp:Label></h3></td></tr><br />
        <tr>
           <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td> 
        </tr>
        <tr>
           <td> <asp:Label ID="lbl1" runat="server" Text="Show Name:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></td> 
        </tr>
         <tr>
           <td> <asp:Label ID="lbl2" runat="server" Text="Date:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lbldate" runat="server" Text=""></asp:Label></td> 
        </tr>
         <tr>
           <td> <asp:Label ID="lbl3" runat="server" Text="Time:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lbltime" runat="server" Text=""></asp:Label></td> 
        </tr>
         <tr>
           <td> <asp:Label ID="lbl4" runat="server" Text="Venue:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td> 
        </tr>
         <tr>
           <td> <asp:Label ID="lbl5" runat="server" Text="Amount:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td> 
        </tr>
    </table><br />
     <table style="width: 528px; height: 213px; border-color:red; border:1px" >
         <tr><td><h3>Payment Information:-</h3></td></tr>
        <tr>
            <td><asp:RadioButton ID="rbt1" runat="server" Checked="true" />Card Details</td>
        </tr>
         <tr>
            <td> <asp:Label ID="lblcardno" runat="server" Text="Card Number"></asp:Label></td><br />
             <td><asp:TextBox ID="txtcardno" runat="server" ></asp:TextBox></td>

           
        </tr>
         <tr>
            <td> <asp:Label ID="lblvalid" runat="server" Text="Valid Thru"></asp:Label></td><br />
             <td>
                 <asp:DropDownList ID="ddlmm" runat="server" >
                     <asp:ListItem>MM</asp:ListItem>
                     <asp:ListItem>jan</asp:ListItem>
                     <asp:ListItem>feb</asp:ListItem>
                     <asp:ListItem>mar</asp:ListItem>
                     <asp:ListItem>apr</asp:ListItem>
                     <asp:ListItem>may</asp:ListItem>
                     <asp:ListItem>jun</asp:ListItem>
                     <asp:ListItem>jul</asp:ListItem>
                     <asp:ListItem>aug</asp:ListItem>
                     <asp:ListItem>sep</asp:ListItem>
                     <asp:ListItem>oct</asp:ListItem>
                     <asp:ListItem>nov</asp:ListItem>
                     <asp:ListItem>dec</asp:ListItem>
                 </asp:DropDownList></td>
              <td>
                 <asp:DropDownList ID="ddlyy" runat="server">
                     <asp:ListItem>YYYY</asp:ListItem>
                     <asp:ListItem>2017</asp:ListItem>
                     <asp:ListItem>2018</asp:ListItem>
                     <asp:ListItem>2019</asp:ListItem>
                     <asp:ListItem>2020</asp:ListItem>
                      <asp:ListItem>2021</asp:ListItem>
                     <asp:ListItem>2022</asp:ListItem>
                     <asp:ListItem>2023</asp:ListItem>
                     <asp:ListItem>2024</asp:ListItem>
                      <asp:ListItem>2025</asp:ListItem>

                  </asp:DropDownList></td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblname" runat="server" Text="CardHolders Name"></asp:Label></td><br />
             <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
             <td> <asp:Label ID="lblpin" runat="server" Text="Pin"></asp:Label></td><br />
             <td><asp:TextBox ID="txtpin" runat="server" TextMode="Password" MaxLength="4"></asp:TextBox></td><br />
        </tr>
         <tr>
             <td> <asp:Label ID="lblbelow" runat="server" Text="Enter the characters given below"></asp:Label></td><br />
             
             <td>
                 <asp:TextBox ID="txtbelow"  runat="server"></asp:TextBox></td><br />
            <td> <asp:Label ID="capcha" runat="server" Text="X679DI"></asp:Label></td>
              
         </tr><br />

        <tr> <td> <asp:Button ID="pay" runat="server" Text="Pay" BackColor="Red" OnClick="pay_Click" ValidationGroup="register" Width="57px"></asp:Button></td>
         <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></tr>
         </table>

</center>
</asp:Content>


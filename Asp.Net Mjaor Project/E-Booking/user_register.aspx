<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="user_register.aspx.cs" Inherits="register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> <div style="background:url(images/11.png);width:100%;">
    <table style="width:100%">
        <tr style="width:100%">
            <td style="width:70%">
            <div><center><h2 style="color:mediumseagreen;">Create E-Booking System Account</h2>
                <p style="font:bold;"> Your Details and Create Your Account</p></center>

                <table style="text-align:center;vertical-align:middle;width:100%;">
                    <tr><td>
                        <asp:TextBox ID="txtname" runat="server" Height="21px" Width="227px"  required></asp:TextBox>
                         <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="txtname" WatermarkText="Please enter Name" runat="server"></asp:TextBoxWatermarkExtender>
                        <br /><br />
                        </td></tr>   
                    <tr><td><asp:TextBox ID="txtemail" runat="server" Height="16px" Width="229px" TextMode="Email" required></asp:TextBox>
                       <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" TargetControlID="txtemail" WatermarkText="Please enter Email" runat="server"></asp:TextBoxWatermarkExtender>
                        <br /><br />
                    </td></tr>
                    <tr><td> <asp:TextBox ID="txtmobileno" runat="server" Height="18px" Width="226px" MaxLength="10" required></asp:TextBox> 
                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" TargetControlID="txtmobileno" WatermarkText="Please enter mobileno" runat="server"></asp:TextBoxWatermarkExtender>
                        <br /><br />
                        </td>

                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^([7-9]{1})([0-9]{9})$"  ValidationGroup="register" runat="server"  ControlToValidate="txtmobileno" ErrorMessage="Invalid Mobile Number" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>

                    </tr>
                    <tr><td style="width:40%"><asp:TextBox ID="txtpassword" runat="server" Height="20px" Width="226px" TextMode="Password" MaxLength="8" required></asp:TextBox> 
                         <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" TargetControlID="txtpassword" WatermarkText="Please enter new Password" runat="server"></asp:TextBoxWatermarkExtender>
                        <br /><br />
                        </td>
                        <td style="width:30%">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter correct pasword" ValidationGroup="register" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
                    </tr>
                      <tr><td> <asp:TextBox ID="txtconfirmpass" runat="server" Height="16px" Width="220px" TextMode="Password" MaxLength="8" required></asp:TextBox>
                           <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" TargetControlID="txtconfirmpass" WatermarkText="Please enter again your Password" runat="server"></asp:TextBoxWatermarkExtender>
                          <br /><br />
                          </td>
                           <td>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ValidationGroup="register" ControlToValidate="txtconfirmpass" ForeColor="Red"></asp:RequiredFieldValidator>

&nbsp;&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password must be match" ValidationGroup="register" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" ForeColor="Red"></asp:CompareValidator>
        </td>

                      </tr>
                       <br />
                    <tr><td><asp:Button ID="btnregister" runat="server" Text="Submit" OnClick="btnregister_click"  ForeColor="White"  BackColor="Red"
                         Height="26px" Width="67px" ValidationGroup="register"></asp:Button></td></tr>
                    <tr><td>
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
                </table>
                </div>
           </td>
            <td style="width:30%">

                <table style="color:whitesmoke; width:50%; border:hidden">
            
                    <tr style="background-color:blue"><td><a href="www.facebook.com" style="text-decoration:none;color:whitesmoke;">
                <img src="images/social-facebook-box-blue-icon.png" height="30px" width="30px"/></a></td>
                <td><a href="www.facebook.com" style="text-decoration:none;color:whitesmoke;"><p href="www.facebook.com">Login with Facebook/a></p></td></tr>
            <tr><td></td></tr>

            <tr style="background-color:red"><td><a href="www.google.com" style="text-decoration:none;color:whitesmoke;">
                <img src="images/google-icon.png" height="30px" width="30px" /></a></td>
                <td><a href="www.google.com" style="text-decoration:none;color:whitesmoke;"><p>Login with Google </p></a></td></tr>
        </table>
         </td>
        </tr>
   </table>
  
    <hr />
    <p style="height: 40px">Already have the E-Booking System Account
        <a href="user_login.aspx">Login</a>
    </p></div>
</asp:Content>



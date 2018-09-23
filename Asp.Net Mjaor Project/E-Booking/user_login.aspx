<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center><table width="100%">
        <tr>
            <td>
                <table>
                     <h2 style="color:mediumseagreen; width: 233px;">Sign in with Your E-Booking System Account</h2>           
                    <tr>
                        
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" Height="25px" Width="153px" TextMode="Email" required></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="txtemail" WatermarkText=" Enter Your Email" runat="server"></asp:TextBoxWatermarkExtender>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" Height="23px" Width="148px" TextMode="Password" MaxLength="8" required></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" TargetControlID="txtpassword" WatermarkText="Enter Your Password" runat="server"></asp:TextBoxWatermarkExtender>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Button ID="Sign_In" runat="server" BackColor="Red" BorderColor="Red" ForeColor="White" OnClick="Sign_In_Click" Text="Sign In" />
                        </td>
                    </tr>
                    <tr><td>
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
                </table>
            </td>
           
            <td>
                <table>
                    <tr><td class="auto-style8"><h2><asp:LinkButton ID="linkguest" style="text-decoration:none;color:mediumseagreen" runat="server" OnClick="linkguest_Click">Guest Entry</asp:LinkButton></h2></td></tr>
                    <tr style="background-color:blue">
                        <td>
                <a href="www.facebook.com" style="text-decoration:none;color:whitesmoke;">
                <img src="images/social-facebook-box-blue-icon.png" height="30px" width="30px" alt=""/></a></td>
                <td><p><a href="www.facebook.com" style="text-decoration:none;color:whitesmoke;">Login with Facebook</a></p>
            </td></tr>
            <tr><td></td></tr>
            <tr style="background-color:red">
                <td>
                <a href="www.google.com" style="text-decoration:none;color:whitesmoke;">
                <img src="images/google-icon.png" height="30px" width="30px" alt="" /></a></td>
                <td><p><a href="www.google.com" style="text-decoration:none;color:whitesmoke;">Login with Google </a></p></td>
            </tr>
                </table>
            </td>
        </tr>
    </table>
         </center>
    <p>Don't have a E-Booking Sytem Account Click <a href="user_register.aspx">here</a><br />
        <a href="Forgetpwd.aspx">Forgot Your Password?</a>
    </p>
</asp:Content>


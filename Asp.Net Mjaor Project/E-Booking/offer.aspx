<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="offer.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <style>
           
            .i1:hover {
              
                 border-radius: 25px;
                box-shadow: 10px 10px 5px #888888;
               -webkit-transform: translate(50px,30px); 
                background: url(c.jpg)  no-repeat ;
                font-family:  'Freestyle Script';
             text-shadow: 5px 5px 5px #b3a0e5;
             font-size: x-large;
            }
            
            
        </style>
             <body>
                  <marquee scrollamount="15">
                      <blockquote><h2><img src="images/b.gif" height="60px" width="80" />Offer Valid For Only Registered User </blockquote></h2></marquee>
                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br></br>
                  
                 <div style="color:red"><h2 >Debit Card Offers:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Special Offers:</h2>
                  </div>
                    <table style="width:100%" >
                          
                         <tr style="width:100%" >
                          
                            <td><asp:ImageButton ID="img1"  src="images/22.jpg" Width="592px" Height="340px"  runat="server" style="margin-left: 364px" /></td>
                         
                        </tr>
                        <tr><td> <h2><marquee scrollamount="15"> The Offers will be shown on your Booking</marquee></h2></td></tr>
                       <tr style="width:100%">
                            <td style="width:35%"><asp:ImageButton ID="img2" src="images/lk.jpeg" Width="340px" Height="300px" runat="server" style="margin-left: 0px" /></td>
                            <td style="width:35%"><asp:ImageButton ID="img3"  src="images/offer1.jpg" Width="340px" Height="300px"  runat="server" style="margin-left: 0px" />&nbsp;</td>

                        </tr>
                 
                         </table>
          

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="movie.aspx.cs" Inherits="_Default" %>

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

                    <table style="width:100%">
                        <tr  style="width:100%">
                            <td class="i1" style=" width:50% "><a href="badri.aspx"> Want to watch this Amazing movie- Badri!!</a><img src="images/99.jpg" style=" height:200px; width:300px;float:left" />
                                <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button1" runat="server" Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White" /></center>
                            </td>
                          <td class="i1" style=" width:50% "><a href="jagga.aspx"> Want to watch this Amazing movie-Jagga-Jasoos</a><img src="images/Jolly_LLB_2_first_look.jpg" style=" height:200px; width:300px ;float:right" />
                               <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button3" runat="server" Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White" /></center>
                            </td>
                          </td>
                        </tr>
                        
                        <tr style="width:100%">
                            <td class="i1" style="width:50%"><a href="rangoon.aspx"> Want to watch this Amazing movie-rangoon</a><img src="images/rangoon-1a.jpg"  style=" height:200px; width:300px; float:left" /> 
                                <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button2" runat="server"  Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White"></asp:Button></center>
                            </td>
                            <td class="i1" style="width:50%"><a href="sultan.aspx"> Want to watch this Amazing movie-Sultan</a><img src="images/sultan-1-a.jpg" style=" height:200px; width:300px ;float:right" />
                                 <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button4" runat="server" Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White" /></center>
                            </td>
                            </td>
                        </tr>
                    
                         <tr style="width:100%"  >
                             <td class="i1" style="width:50%"><a href="raees.aspx"> Want to watch this Amazing movie-raees</a> <img src="images/uii.jpg" style=" height:200px; width:300px;float:left" />
                                  <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button5" runat="server" Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White" /></center>
                            </td>
                             </td>
                            <td class="i1" style="width:50%"> <a href="dabangg.aspx">  Want to watch this Amazing movie- dabangg</a>  <img src="images/maxresdefault(1).jpg" style=" height:200px; width:300px; float:right" />
                                 <br></br>
                                &nbsp;&nbsp;&nbsp;<center><asp:Button ID="Button6" runat="server" Text="Pay Now" Height="50px" Width="147px"  BackColor="Red" ForeColor="White" /></center>
                            </td>
                            </td>
                        </tr>
                         
                    </table>
          
        </body>
    </html>
</asp:Content>


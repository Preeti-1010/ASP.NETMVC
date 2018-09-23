<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="Paynow sports.aspx.cs" Inherits="Paynow_sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
            <div style="width:40%">
                <h2>Order Summary</h2><br />
                <div>

           <asp:GridView ID="gv1" runat="server" GridLines="None" class="i1"  AutoGenerateColumns="false" 
            Width="100%" >
            <Columns>
                 <asp:TemplateField HeaderText="" >
    <ItemTemplate>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblid" runat="server" src='<%#Eval("sports_id")%>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl" runat="server" src='<%#Eval("title")%>'></asp:Label> 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Category:"></asp:Label>   &nbsp;&nbsp; <asp:Label ID="lbl2" runat="server" Text='<%#Eval("category")%>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>   &nbsp;&nbsp; <asp:Label ID="lbl3" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>   &nbsp;&nbsp;  <asp:Label ID="lbl4" runat="server" Text='<%#Eval("date")%>'></asp:Label>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Time:"></asp:Label>   &nbsp;&nbsp;  <asp:Label ID="lbl5" runat="server" Text='<%#Eval("time")%>'></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td>
                      <asp:Label ID="Label5" runat="server" Text="Price:"></asp:Label>   &nbsp;&nbsp; <asp:Label ID="lbl7" runat="server" Text='<%#Eval("price")%>'></asp:Label>
                </td>
            </tr>
            
           
        </table>

    </ItemTemplate>
    </asp:TemplateField>
                
    </Columns>
</asp:GridView>
     
                </div>
            </div>
    <br />

     <div id="c2">
                <asp:Button ID="btnpay" runat="server" Text="Pay Now"   Height="50px" BackColor="Red" Width="132px" OnClick="btnpay_Click" />
            </div>
        
</asp:Content>


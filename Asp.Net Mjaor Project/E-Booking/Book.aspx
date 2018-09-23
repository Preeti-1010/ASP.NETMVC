<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="vertical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div style="height:auto">
        <div>
            <h2>
                <asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></h2>
        </div><br />
        <div>
            <asp:CheckBox ID="chk1" runat="server" />I agree to this Show Terms and Condition.&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" Text=""  ForeColor="Red"></asp:Label></div><br />
      
        <div>
      <br />
               <asp:GridView ID="gv1" runat="server" GridLines="None" class="i1"  AutoGenerateColumns="false" 
            Width="100%">
            <Columns>
                 <asp:TemplateField HeaderText="Details">
    <ItemTemplate>
        <table>
            <tr>
                <td> <asp:Label ID="lblid" runat="server" src='<%#Eval("addevent_id")%>'></asp:Label>  </td>
            </tr>
            <tr>
                <td> <asp:Label ID="lbltitle" runat="server" src='<%#Eval("title")%>'></asp:Label> </td>
            </tr>
            <tr>
                <td><asp:Image ID="img" runat="server" src='<%#Eval("image")%>'   height="500px"/>    </td>
            </tr>
            <br />
            <tr>
                <td><b>Synopsis-</b></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Event Date:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lbldate" runat="server" src='<%#Eval("date")%>'></asp:Label> </td>
            </tr>

             <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Event Time:"></asp:Label>   &nbsp;&nbsp; <asp:Label ID="lbltime" runat="server" Text='<%#Eval("time")%>'></asp:Label> </td>
            </tr>
             <tr>
                <td><asp:Label ID="lblcat" runat="server" Text='<%#Eval("category")%>'></asp:Label>  </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Event Price:"></asp:Label>   &nbsp;&nbsp;<asp:Label ID="lblprice" runat="server" Text='<%#Eval("price")%>'></asp:Label>  </td>
            </tr>
             <br />
            <tr>
                <td><b>Address-</b></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address")%>'></asp:Label> </td>
            </tr>
             <tr>
                <td><b>Quantity-</b></td>
            </tr>
             <tr>
                  <td>
                   <asp:DropDownList ID="ddlquant" runat="server" Height="16px" Width="150px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
        &nbsp;&nbsp;
                        <asp:Button ID="btnproceed" runat="server" Text="Proceed" BackColor="Red" Width="100px" OnClick="btnproceed_Click" /> </td>
            </tr>
        </table>
          
    </ItemTemplate>
    </asp:TemplateField>
           
  
    </Columns>
</asp:GridView>



        </div>
    </div>


    


</asp:Content>


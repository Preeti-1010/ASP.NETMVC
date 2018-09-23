<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="sports.aspx.cs" Inherits="_Default" %>

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
           
                    <asp:GridView ID="gv1" runat="server" GridLines="None" class="i1"   AutoGenerateColumns="false" 
            Width="100%">
            <Columns>
                 <asp:TemplateField HeaderText="" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblid" runat="server" Text='<%#Eval("sports_id")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>
           <asp:TemplateField HeaderText="">
    <ItemTemplate>
        <asp:ImageButton ID="imgbtn" runat="server" src='<%#Eval("image")%>'  width="350px" height="260px"/>    
    </ItemTemplate>
    </asp:TemplateField>
                   
    <asp:TemplateField HeaderText="">
    <ItemTemplate>  
    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("title")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

     <asp:TemplateField HeaderText="">
    <ItemTemplate>
    <asp:Label ID="lbl2" runat="server" Text='<%#Eval("description")%>'></asp:Label>
    </ItemTemplate>    
    </asp:TemplateField>

                <asp:TemplateField HeaderText="">

    <ItemTemplate>
        <asp:ImageButton ID="linkbtn" runat="server" 
            src="images/book.gif"  Width="100px" Height="50px"  ForeColor="Red" CausesValidation="false" 
                        CommandName="" OnClick="linkbtn_Click" ></asp:ImageButton>
    </ItemTemplate>    
    </asp:TemplateField>

    </Columns>
</asp:GridView>
     
    </html>
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="view_movies.aspx.cs" Inherits="view_movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br /><center>
    <asp:GridView ID="gvmovies" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="gvmovies_SelectedIndexChanged">
        <Columns>
   <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%#Eval("m_cat_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>  
               <asp:TemplateField HeaderText="Images">
                <ItemTemplate>
                   <img src='<%#Eval("m_images") %>' height="50px" width="50px" />
                </ItemTemplate>
            </asp:TemplateField>  
        </Columns>
    </asp:GridView></center>
    <br />
    <br />
    <br />

</asp:Content>


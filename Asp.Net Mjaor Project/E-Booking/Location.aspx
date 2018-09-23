<%@ Page Title="" Language="C#" MasterPageFile="~/U n G MasterPage.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><div>
        <div>
        <h4>Select Country: &nbsp;<asp:DropDownList ID="ddlcountry" runat="server">
            <asp:ListItem>America</asp:ListItem>
            <asp:ListItem>Brazil</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>Dhaka</asp:ListItem>
            <asp:ListItem>Egypt</asp:ListItem>
            <asp:ListItem>France</asp:ListItem>
            <asp:ListItem>Germany</asp:ListItem>
            <asp:ListItem>HongKong</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            <asp:ListItem>Kenya</asp:ListItem>
            <asp:ListItem>Lebanon</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Nepal</asp:ListItem>
            <asp:ListItem>Oman</asp:ListItem>
            <asp:ListItem>Peru</asp:ListItem>
            <asp:ListItem>Qatar</asp:ListItem>
            <asp:ListItem>Russia</asp:ListItem>
            <asp:ListItem>Singapore</asp:ListItem>
            <asp:ListItem>Thailand</asp:ListItem>
            <asp:ListItem>U.K</asp:ListItem>
            <asp:ListItem>Vinetam</asp:ListItem>
            <asp:ListItem>Yemen</asp:ListItem>
            <asp:ListItem>Zambia</asp:ListItem>
            </asp:DropDownList>
            </h4> 
        </div>

        <div>
             <h4>Select State: &nbsp;<asp:DropDownList ID="ddlstate" runat="server"><asp:ListItem>Andhra pradesh</asp:ListItem>
                 <asp:ListItem>Bihar</asp:ListItem>
                 <asp:ListItem>Chattisgarh</asp:ListItem>
                 <asp:ListItem>Goa</asp:ListItem>
                 <asp:ListItem>Himanchal Pradesh </asp:ListItem>
                 <asp:ListItem>Jharkhand</asp:ListItem>
                 <asp:ListItem>Karnatka</asp:ListItem>
                 <asp:ListItem>Madhya Pradesh </asp:ListItem>
                 <asp:ListItem>Nagpur</asp:ListItem>
                 <asp:ListItem>Orrisa</asp:ListItem>
                 <asp:ListItem>tripura</asp:ListItem>
                 <asp:ListItem>Sikkim</asp:ListItem>
                 <asp:ListItem>Orrisa</asp:ListItem>
                 <asp:ListItem>West bengal</asp:ListItem>
                 </asp:DropDownList>
             </h4>
        </div>

        <div>
             <h4>Select City: &nbsp;<asp:DropDownList ID="ddlcity" runat="server">
                 <asp:ListItem>Ahemdabad</asp:ListItem>
                 <asp:ListItem>Barabanki</asp:ListItem>
                 <asp:ListItem>Dehradun</asp:ListItem>
                 <asp:ListItem>faridabad</asp:ListItem>
                 <asp:ListItem>Hasinapur</asp:ListItem>
                 <asp:ListItem>Gorakhpur</asp:ListItem>
                 <asp:ListItem>Imphal</asp:ListItem>
                 <asp:ListItem>Jaipur</asp:ListItem>
                 <asp:ListItem>Kolkata</asp:ListItem>
                 <asp:ListItem>Lucknow</asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem>Mumbai</asp:ListItem>
                 <asp:ListItem>Noida</asp:ListItem>
                 <asp:ListItem>Pune</asp:ListItem>
                 <asp:ListItem>Ooty</asp:ListItem>
                 <asp:ListItem>Raibarely</asp:ListItem>
                 <asp:ListItem>Surat</asp:ListItem>
                 <asp:ListItem>trivanantpuram</asp:ListItem>
                 <asp:ListItem>Varanasi</asp:ListItem>
                 </asp:DropDownList>
             </h4>
        </div>
        <br />
        <asp:Button ID="btnnext" runat="server" Text="NEXT"></asp:Button>
        <br />
    </div>
</center>
</asp:Content>


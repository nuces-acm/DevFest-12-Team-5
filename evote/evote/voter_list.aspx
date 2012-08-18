<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="voter_list.aspx.cs" Inherits="evote.voter_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <span class="style2">Voters List</span><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:voteConnectionString %>" 
        SelectCommand="SELECT * FROM [reg]"></asp:SqlDataSource>
</p>
<asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="nic" 
    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
    style="text-align: center; margin-left: 203px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Voter ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nic" HeaderText="Voter CNIC" ReadOnly="True" 
                SortExpression="nic" />
            <asp:BoundField DataField="fam" HeaderText="Voter Family#" 
                SortExpression="fam" />
            <asp:BoundField DataField="iname" HeaderText="Voter Name" 
                SortExpression="iname" />
            <asp:BoundField DataField="so" HeaderText="Title" SortExpression="so" />
            <asp:BoundField DataField="so_name" HeaderText="Name" 
                SortExpression="so_name" />
            <asp:BoundField DataField="gen" HeaderText="Gender" SortExpression="gen" />
            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" 
                SortExpression="dob" />
            <asp:BoundField DataField="adr" HeaderText="Address" SortExpression="adr" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
<p>
    &nbsp;</p>
</asp:Content>

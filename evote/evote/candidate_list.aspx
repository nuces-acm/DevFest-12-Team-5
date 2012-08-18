<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="candidate_list.aspx.cs" Inherits="evote.candidate_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        width: 68%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    Candidate List<table align="center" class="style2">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="c_nic" DataSourceID="SqlDataSource1" 
                    GridLines="Horizontal" style="text-align: center; margin-top: 19px" 
                    Width="618px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="c_nic" HeaderText="Candidate CNIC" ReadOnly="True" 
                            SortExpression="c_nic" />
                        <asp:BoundField DataField="c_name" HeaderText="Candidate Name" 
                            SortExpression="c_name" />
                        <asp:BoundField DataField="party_name" HeaderText="Party Name" 
                            SortExpression="party_name" />
                        <asp:BoundField DataField="loc" HeaderText="Location" SortExpression="loc" />
                        <asp:BoundField DataField="c_sign" HeaderText="Candidate Sign" 
                            SortExpression="c_sign" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:voteConnectionString %>" 
                    SelectCommand="SELECT * FROM [candidate]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

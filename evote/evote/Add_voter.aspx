<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_voter.aspx.cs" Inherits="evote.voters_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        width: 43%;
        height: 129px;
    }
    .style3
    {
        text-align: center;
        width: 136px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    ADD VOTER INFORMATION</p>
    <p>
        <asp:Label ID="Label8" runat="server"></asp:Label>
    </p>
<p>
    <table align="center" border="1" class="style2">
        <tr>
            <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="CNIC #"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="cnic" runat="server" style="text-align: left" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:Label ID="Label2" runat="server" Text="Family #"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="fam" runat="server" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:Label ID="Label3" runat="server" Text="Voter's Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="vote_name" runat="server" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:DropDownList ID="so_combo" runat="server">
                <asp:ListItem>S/O</asp:ListItem>
                <asp:ListItem>D/O</asp:ListItem>
                <asp:ListItem>W/O</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="so_name" runat="server" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="gen" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="dob" runat="server" Height="23px" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="adr" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Submit Information" />
            </td>
        </tr>
    </table>
    <br />
</p>
</asp:Content>

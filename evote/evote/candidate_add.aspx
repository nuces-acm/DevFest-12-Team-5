<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="candidate_add.aspx.cs" Inherits="evote.candidate_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        width: 39%;
        height: 34px;
    }
    .style3
    {
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    Add Candidate</p>
    <p>
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
<table align="center" class="style2">
    <tr>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="Candidate CNIC"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="c_nic" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label2" runat="server" Text="Candidate Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="c_name" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label3" runat="server" Text="Party Name"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="p_name" runat="server">
                <asp:ListItem>PML</asp:ListItem>
                <asp:ListItem>PPPP</asp:ListItem>
                <asp:ListItem>MQM</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="loc" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label5" runat="server" Text="Candidate Sign"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="c_sign" runat="server">
                <asp:ListItem>Flower</asp:ListItem>
                <asp:ListItem>Stair</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
                <asp:ListItem>Moon</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Submit Information" />
        </td>
    </tr>
</table>
</asp:Content>

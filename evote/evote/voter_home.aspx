<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter_home.aspx.cs" Inherits="evote.voter_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            background-color: #FFFFFF;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            width: 358px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body style="font-weight: 700; font-size: large; text-align: center">
    <form id="form1" runat="server">
    <div 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large" 
        class="style5">
    
        <div class="style6">
    
        Voter Profile<br />
        <br />
        </div>
        <asp:Panel ID="Panel1" runat="server" BorderWidth="2px" 
            style="margin-left: 161px" Width="709px">
            <table class="style1">
                <tr>
                    <td class="style7" bgcolor="#3399FF" 
                        style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="Label1" runat="server" style="text-align: left" Text="CNIC #"></asp:Label>
                    </td>
                    <td bgcolor="#3399FF" class="style4" 
                        style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="cnic" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="Label2" runat="server" Text="Family #"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="fam" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="style4" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="name" runat="server" Text="name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="so" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="so_name" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="style4" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="gen" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="dob" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="style4" style="background-color: #33CCFF; color: #FFFFFF;">
                        <asp:Label ID="add" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="style6">
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="VOTE" 
                    Width="70px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Log out" />
            </div>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>

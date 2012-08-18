<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_voter.aspx.cs" Inherits="evote.login_voter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 40%;
            height: 110px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 247px;
            text-align: center;
        }
        .style4
        {
            width: 232px;
            text-align: center;
        }
        .style5
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style2">
            <span class="style5">Voter Login<br />
            <br />
            <asp:Label ID="Label1" runat="server" style="font-size: small"></asp:Label>
            </span><br />
        </div>
        <table class="style1" align="center">
            <tr>
                <td class="style4" bgcolor="#0099FF" 
                    style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif">
                    Voters CNIC #</td>
                <td class="style3" bgcolor="#0099FF">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" bgcolor="#0099FF" 
                    style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif">
                    Voters Family #</td>
                <td class="style3" bgcolor="#0099FF">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#0099FF" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        style="height: 26px" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="evote.login_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 46%;
            height: 24px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 242px;
            height: 23px;
            text-align: center;
        }
        .style4
        {
            height: 23px;
            text-align: center;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            font-size: xx-large;
        }
        .style7
        {
            width: 40px;
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p class="style6">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Admin Login</p>
    <p>
        &nbsp;</p>
    <table align="center" class="style1">
        <tr>
            <td class="style3" bgcolor="#6699FF" 
                style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif">
                Admin ID</td>
            <td class="style4" bgcolor="#6699FF">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#6699FF" 
                style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif">
                Admin Password</td>
            <td bgcolor="#6699FF" class="style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#6699FF" colspan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Login" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                            Width="50px" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
<img alt="" class="style7" src="252.gif" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
&nbsp; </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#6699FF" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

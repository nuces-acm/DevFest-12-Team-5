<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Login.aspx.cs" Inherits="evote.Main_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 51%;
        }
        .style2
        {
            width: 194px;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center" class="style1" 
        style="background-color: #00CCFF; padding: inherit; display: run-in; border: thin outset #000000">
        <tr>
            <td class="style3" colspan="2">
                <br />
                <span class="style4">
                <strong style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF">ONLINE VOTING SYSTEM</strong></span><strong><br 
                    class="style4" />
                </strong></td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Voter's Login" 
                    Width="123px" />
&nbsp;</td>
            <td class="style3">
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="text-align: center; margin-left: 0px;" Text="Admin's Login" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>

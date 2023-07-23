<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IT22_OE2.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 451px;
        }
        .auto-style2 {
            width: 239px;
        }
    </style>
</head>
    <title>Dashboard</title>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Label ID="lblUserDetail" runat="server" Text="User"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" Width="114px" OnClick="lblLogout_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
         <h1>Welcome to your dashboard!</h1>
        </div>
    </form>
</body>
</html>

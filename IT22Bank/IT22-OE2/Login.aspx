<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IT22_OE2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type ="text/css">
        body {
 background-image: url("bg.gif");
  background-size: cover;
  background-repeat: no-repeat
}

body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}

    body {
        width:100vw;
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }

        .auto-style2 {
            margin-left: 10px;
        }
        .auto-style3 {
            margin-left: 11px;
        }

    </style>
</head>
<body>
    <form align="center">
    <form id="form1" runat="server">
        <h1>Sign in to your Account!</h1>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="210px" CssClass="auto-style3" Height="35px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="txtPassword" runat="server" Width="210px" TextMode="Password" CssClass="auto-style2" Height="35px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="180px" BackColor="#FF9900" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Height="40px" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard2.aspx.cs" Inherits="IT22_OE2.Dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form {
            margin-top:400px;
            font-size:20px;
            font-family:sans-serif;
        }
    
        .auto-style5 {
            width: 365px;
        }
        .auto-style6 {
            width: 296px;
        }
          body {
  background-image: url("bg.gif");
  background-size: cover;
  background-repeat: no-repeat
}


   
                     
    
    </style>
  
   
  </head>
<body>
    <form align="center">
    <form id="form1" runat="server">
        <h1>Welcome to your Bank Account!</h1>
        <div>
            <table style="width: 100%;">

                <tr>
                    <td class="auto-style5">Account Number</td>
                    <td class="auto-style5">Account Name</td>                   
                    <td class="auto-style5">Available Balance</td>
                    <td class="auto-style6">

                      <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click1" Text="Logout" BackColor="#6699FF" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="30px" Width="100px"/>
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblAccountNumber" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblAccountName" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblAvailableBalance" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="IT22_PT1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 219px;
        }
    </style>
</head>
    <title>
        Registration
    </title>
<body>
    <h2>Registration Page</h2>
    <form id="Registration" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="260px"></asp:TextBox>
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailAddress" runat="server" Width="260px"></asp:TextBox>
                    </td>
                      </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactNumber" runat="server" Width="260px"></asp:TextBox>
                    </td>
                      </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txtGender" runat="server" Height="23px" Width="105px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                        </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Province"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProvince" runat="server" Width="260px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txtCountry" runat="server" Height="23px" Width="105px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Philippines</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>Thailand</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="260px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    

                </tr>
            </table>
        </div>
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="204px" />
        </br> </br>
        <asp:Label ID="lblResult" runat="server" Text="Results of Registration"></asp:Label>
    </form>
</body>
</html>

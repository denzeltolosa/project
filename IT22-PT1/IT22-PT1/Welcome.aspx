<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="IT22_PT1.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
</head>
<body>
    <h2>Registration Details</h2>
    <form id="Welcome" runat="server">
        <div>
        <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label>
        </div>
            <div>
            <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label>
       </div>
           <div>
            <asp:Label ID="lblEmailAddress" runat="server" Text="Email"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblContactNumber" runat="server" Text="ContactNumber"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </div>
    </form>
</body>
</html>

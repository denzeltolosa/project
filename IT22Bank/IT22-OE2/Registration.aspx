<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="IT22_OE2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
     
      </style>           
</head>
<body>
    <form align="center">
    <form id="form1" runat="server">
        <h1>Registration</h1>
    
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Account Number" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAccountNumber" runat="server" Width="240px" Height="20px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">

                    
                        <asp:Label ID="lblUserDetail" runat="server" Text="User" Font-Bold="True" Font-Size="Large"></asp:Label>

                    
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Account Name" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAccountName" runat="server" Width="240px" Height="20px"></asp:TextBox>
                        </td>
                    <td class="auto-style2">

                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" BackColor="#FF3300" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Height="30px" OnClientClick="Pointer" Width="100px" Font-Size="Medium" />

                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Account Type" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="txtAccountType" runat="server" Width="250px" Height="30px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Savings</asp:ListItem>
                            <asp:ListItem>Checking</asp:ListItem>
                            <asp:ListItem>Fixed Deposit</asp:ListItem>
                            <asp:ListItem>Recurring Deposit</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                      </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Branch" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="txtBranch" runat="server" Width="250px" Height="30px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Alaminos</asp:ListItem>
                            <asp:ListItem>San Pablo</asp:ListItem>
                            <asp:ListItem>Calamba</asp:ListItem>
                            <asp:ListItem>Tanauan</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                     </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAddress" runat="server" Width="240px" Height="20px"></asp:TextBox>
                    </td>

                     <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Contact No" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtContactNo" runat="server" Width="240px" Height="20px"></asp:TextBox>
                    </td>
                           <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Currency" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="txtCurrency" runat="server" Width="250px" Height="30px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Philippine Peso</asp:ListItem>
                            <asp:ListItem>US Dollars</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                     <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Initial Deposit" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtInitialDeposit" runat="server" Width="240px" Height="20px"></asp:TextBox>
                    </td>
                          <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label9" runat="server" Text="Pin Number" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPinNumber" runat="server" Width="240px" Height="20px"></asp:TextBox>
                    </td>
                    
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" Width="289px" OnClick="btnRetrieve_Click" Height="30px" BackColor="#FFFF66" BorderColor="#003300" BorderStyle="Double" Font-Bold="True" ForeColor="Black" Font-Size="Medium" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="289px" Height="30px" BackColor="#33CC33" BorderColor="#003300" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" />
                    </td>
                    
                </tr>
            </table>
        </div>
        </br>
        
        <asp:GridView AutoGenerateColumns="false" ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="213px" Width="610px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />

            <columns>
                  <asp:TemplateField HeaderText ="Account Number">
                    <ItemTemplate>
                        <asp:label  runat="server" Text= '<%# Eval("accountnumber") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                  <asp:TemplateField HeaderText ="Account Name">
                    <ItemTemplate>
                        <asp:label runat="server" Text= '<%# Eval("accountname") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText ="Account Type">
                    <ItemTemplate>
                        <asp:label runat="server" Text= '<%# Eval("accounttype") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText ="Branch">
                    <ItemTemplate>
                        <asp:label runat="server" Text= '<%# Eval("branch") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText ="Address">
                    <ItemTemplate>
                        <asp:label runat="server" Text= '<%# Eval("address") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText ="Contact No">
                    <ItemTemplate>
                        <asp:label  runat="server" Text= '<%# Eval("contactno") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText ="Currency">
                    <ItemTemplate>
                        <asp:label  runat="server" Text= '<%# Eval("currency") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText ="Initial Deposit">
                    <ItemTemplate>
                        <asp:label  runat="server" Text= '<%# Eval("initialdeposit") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText ="Pin Number">
                    <ItemTemplate>
                        <asp:label  runat="server" Text= '<%# Eval("pinnumber") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </columns>

        </asp:GridView>
    </form>
</body>
</html>

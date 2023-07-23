<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="IT22L_XML.Record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          body {
  background-image: url("IT22BG.jpg");
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
        .auto-style3 {
            margin-left: 188px;
        }
        .auto-style4 {
            width: 675px;
            margin-left: 80px;
        }
        .auto-style5 {
            width: 364px;
            height: 39px;
        }
        .auto-style6 {
            width: 490px;
            height: 39px;
        }
        .auto-style7 {
            width: 364px;
            height: 42px;
        }
        .auto-style8 {
            width: 490px;
            height: 42px;
        }
        .auto-style9 {
            width: 364px;
            height: 38px;
        }
        .auto-style10 {
            width: 490px;
            height: 38px;
        }
        .auto-style11 {
            width: 364px;
            height: 45px;
        }
        .auto-style12 {
            width: 490px;
            height: 45px;
        }
        .auto-style13 {
            width: 364px;
            height: 48px;
        }
        .auto-style14 {
            width: 490px;
            height: 48px;
        }
        .auto-style15 {
            width: 364px;
            height: 44px;
        }
        .auto-style16 {
            width: 490px;
            height: 44px;
        }
        .auto-style17 {
            width: 364px;
            height: 41px;
        }
        .auto-style18 {
            width: 490px;
            height: 41px;
        }
        .auto-style19 {
            margin-left: 70px;
        }
        .auto-style20 {
            margin-bottom: 15px;
        }
    </style>



    
</head>
<body>
    
    <form id="form1" runat="server">
            <fieldset style="width:700px;">
            <h1 class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Record XML Data File</h1>
            <table border="0">
                
                <tr>
                    <th class="auto-style5">Student Number</th>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtStudentNo" runat="server" Width="182px" Height="25px" BorderColor="White"></asp:TextBox>
                     
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtStudentNo" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" OnDataBinding="btnSave_Click" ToolTip="Please fill out the field!"></asp:RequiredFieldValidator>
                     
                        </td>
                </tr>
      
                <tr>
                    <th class="auto-style7">First Name</th>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="180px" Height="25px" BorderColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" ControlToValidate="txtFirstName" OnDataBinding="btnSave_Click"></asp:RequiredFieldValidator>
                    </td>
                    <tr>
                <th class="auto-style9">Last Name</th>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtLastName" runat="server" Width="180px" Height="25px" BorderColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" OnDataBinding="btnSave_Click"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style11">Gender</th>
                    <td class="auto-style12">
                        <asp:DropDownList ID="txtGender" runat="server" Height="30px" Width="99px">
                            <asp:ListItem Text ="Select" selected ="True"/>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGender" ErrorMessage="*" initialvalue="Select" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" OnDataBinding="btnSave_Click"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style13">Program</th>
                    <td class="auto-style14">
                        <asp:DropDownList ID="txtCourse" runat="server" Height="30px" Width="99px">
                            <asp:ListItem Text ="Select" selected ="True"/>
                            <asp:ListItem>BSIT</asp:ListItem>
                            <asp:ListItem>BSCS</asp:ListItem>
                            <asp:ListItem>BSCpE</asp:ListItem>
                            <asp:ListItem>BSCE</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCourse" ErrorMessage="Please choose Corresponding Course!" initialvalue="Select"  OnDataBinding="btnSave_Click" Font-Size="Small" ForeColor="#FF3300" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <th class="auto-style15">Contact No</th>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtContactNo" runat="server" Width="181px" Height="25px" BorderColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" OnDataBinding="btnSave_Click"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        
                        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="113px" OnClick="btnClear_Click" BackColor="#6699FF" BorderColor="White" BorderStyle="Groove" Font-Bold="True" CssClass="auto-style3" Height="30px" />          
                      </td>
                    <td class="auto-style18">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="116px" BackColor="#CCFF66" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Height="30px" />                                                           
                      </td>
                </tr>  
                   
             </table>
        </fieldset>

        <div>
        </div>
        <div class="auto-style20">

        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="5" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" CssClass="auto-style19">
            <Columns>
                <asp:TemplateField HeaderText="Student Number">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtStudentNo" runat="server" Text='<%# Bind("StudentNo") %>' Width="166px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblStudentNo" runat="server" Text='<%# Bind("StudentNo") %>'></asp:Label>
                    </ItemTemplate>  

                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>' Width="166px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>' Width="166px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:DropDownList ID="txtGender" runat="server" Height="30px" SelectedValue='<%# Bind("Gender") %>' Width="99px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="txtGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course">
                    <EditItemTemplate>
                        <asp:DropDownList ID="txtCourse" runat="server" SelectedValue='<%# Bind("Course") %>'>
                            <asp:ListItem>BSIT</asp:ListItem>
                            <asp:ListItem>BSCS</asp:ListItem>
                            <asp:ListItem>BSCpE</asp:ListItem>
                            <asp:ListItem>BSCE</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="txtCourse" runat="server" Text='<%# Bind("Course") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtContactNo" runat="server" Text='<%# Bind("ContactNo") %>' Width="166px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="txtContactNo" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>

    </form>
</body>
</html>

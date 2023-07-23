<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT22_OE5_XML._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <form id="form1"> 
    <div>
        <fieldset style="width:500px;"> 
            <legend>Student Record XML Data File</legend>
            <table border="1" width="100%">
                <tr>
                    <th>Student Number</th>
                    <td>
                        <asp:TextBox ID="txtStudentNo" runat="server" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>First Name</th>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="166px"></asp:TextBox>
                    </td>
                <tr>
                <th>Last Name</th>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>
                          <asp:TextBox ID="txtGender" runat="server" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Program</th>
                    <td>
                        <asp:DropDownList ID="txtProgram" runat="server">
                            <asp:ListItem>BSIT</asp:ListItem>
                            <asp:ListItem>BSCS</asp:ListItem>
                            <asp:ListItem>BSCpE</asp:ListItem>
                            <asp:ListItem>BSCE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                <th>Contact No</th>
                    <td>
                        <asp:TextBox ID="txtContactNo" runat="server" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    </form>
    <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
    

    
</asp:Content>

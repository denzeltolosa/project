<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IT22_OE2.Login" %>

<!DOCTYPE html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Login </title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 28px;
            margin-top: 0px;
        }
        .auto-style2 {
            text-align: center;
            height: 27px;
        }
        .auto-style3 {
            height: 63px;
        }
    </style>

</head>

<body class="bg-gradient-primary">
     <form runat ="server">
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                     <h1 class="h4 text-gray-900 mb-4">Login to your Bank Account</h1>
                                  </div>
                                 
                                  <div class="form-group">
                                 <asp:TextBox ID="txtUsername" runat="server" aria-describedby="emailHelp" placeholder="Enter Username" Width="287px" Height="30px"></asp:TextBox>
                                     </div>
                                       <div class="form-group">
                                 <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" Width="287px" TextMode="Password" Height="30px"></asp:TextBox>
                                     </div>
                                   <div class="form-group">
                                       <div class="custom-control custom-checkbox small" style="left: 0px; top: 5px; height: 28px">
                                         <input type="checkbox" class="custom-control-input" id="customCheck">
                                          <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                       <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="220px" BackColor="#33CC33" BorderColor="#33CC33" BorderStyle="Outset" Font-Bold="True" Height="40px" ForeColor="White"/>
                                            
                                      
                                     
                                       
                                    
                                    <hr class="auto-style3">
                                    <div class="auto-style2">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="auto-style1">
                                        <a class="small" href="Registration.aspx">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
         </form>
</body>


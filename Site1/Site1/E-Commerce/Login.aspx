<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Site1.E_Commerce.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../Assets/BS3/bootstrap.min.js"></script>

    <style>
        footer {
            background: #f2f2f2;
            padding: 25px;
        }

        .Carousel-inner img {
            width: 100%;
            min-height: 200px;
        }

        @media (max-width:600px) {
            .Carousel-inner {
                display: none;
            }
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
       <!-- Header-->
            <header>
                <div class="jumbotron text-center" style="margin-bottom: 0 ; color:brown">
                    <h1>BoAt-X </h1>
                    <p>Thee Best Indian Store to Buy Amazing and High Quality Headphones </p>
                </div>
                <!-- Navbar -->
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">BoAt-X</a>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li ><a href="#">Home</a></li>
                                <li><a href="About.aspx">About</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
                                <li><a href="Blog.aspx">Blog</a></li>
                                <li><a href="Products.aspx">Product</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
                                <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-User"></span>  SignUp </a></li>
                                <li><a href="../View/Admin/Admin_Login.aspx"><span class="glyphicon glyphicon-knight"></span> Admin </a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <!-- Header-->
        <br />
        <br />
        <br />
        <center>
        <div class="container">
                <div class="col-sm-3"> </div>
             <div class="col-sm-6">
              <div class="panel panel-primary">
                  <div class="panel-heading">Login into Your User Account</div>
              <div class="panel-body">

                  <div class="row">
                      <div class="col-sm-12">
                          <div class="form-group">
                              <label>Username</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                          </div>
                          <div class="form-group">
                                <label>Password</label>
                              <asp:TextBox ID="txtPass" CssClass="form-control" runat="server"></asp:TextBox>
                          </div>
                          <div class="form-group">
                                <asp:Button ID="btnLog" runat="server"  CssClass="btn btn-success" Text="Login" OnClick="btnLog_Click1"></asp:Button>
                                <asp:Button ID="BtnCanc" runat="server"  CssClass="btn btn-danger" Text="Cancel"></asp:Button>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="panel-footer"></div>
            </div>
            </div>
        </div>
            </center>
        <footer class="container-fluid text-center jumbotron">
            <p style="font-size:small"> 2022 @ Copyright Reserved | BoAt-X inc.. </p>
            <p style="font-size:smaller">Developed And Maintained By IyAppAn</p>
        </footer>
    </form>
</body>
</html>

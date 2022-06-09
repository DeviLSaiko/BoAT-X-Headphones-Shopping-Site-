<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Site1.E_Commerce.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buy Amazing and High Quality Headphones </title>
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
       row{

            border-color:antiquewhite;
        }
        navbar-inverse{
            color:bisque;
        }
        body {
            color:brown;
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
        <div>
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
                            <a class="navbar-brand" href="Home.aspx">BoAt-X</a>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="Home.aspx">Home</a></li>
                                <li><a href="About.aspx">About</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
                                <li><a href="Blog.aspx">Blog</a></li>
                                <li><a href="Products.aspx">Product</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
                                <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-User"></span>  SignUp </a></li>
                                <li><a href="../View/Admin/Admin_Login.aspx"><span class="glyphicon glyphicon-knight"></span> Admin </a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <!-- Header-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="../Assets/Images/Headphone/C2.jpg" alt="Los Angeles">
                                    <div class="carousel-caption">
                                        <h3>Offers</h3>
                                        <p>at 999 Only</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="../Assets/Images/Headphone/c3.jpg" alt="Chicago">
                                    <div class="carousel-caption">
                                        <h3>Offers</h3>
                                        <p>at 999 Only</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="../Assets/Images/Headphone/c1.jpg" alt="New York">
                                    <div class="carousel-caption">
                                        <h3>Offers</h3>
                                        <p>at 999 Only</p>
                                    </div>
                                </div>
                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 well">
                        Earbuds
                    </div>
                    <div class="col-sm-4 well ">
                       Noise-Cancelling
                    </div>
                    <div class="col-sm-4 well">
                       Wireless Headsets
                    </div>
                </div>
            </div>
        </div>
        <div class=" container text-center">
            <h3>Products</h3>
            <br>
            <div class="row">
                <div class="col-sm-3 ">
                    <img src="../Assets/Images/Headphone/cloud-alpha-s-7-1-surround-sound-bass-and-adjustment-slider-original-imagak7fzvgszxar.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p></p>
                </div>
                <div class="col-sm-3 ">
                    <img src="../Assets/Images/Headphone/cloud-alpha-s-7-1-surround-sound-bass-and-adjustment-slider-originaSl-imagak7fzvgszxar.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                </div>
                <div class="col-sm-3">
                    <div class="well">
                        Logitech Headphones
                    </div>
                    <div class="well">
                        Soundcore Headphones
                    </div>

                </div>
                <div class="col-sm-3">
                    <div class="well">
                        Sony Headphones
                    </div>
                    <div class="well">
                        Sennheiser Headphones
                    </div>
                </div>
            </div>
        </div>
        <div class=" container text-center">
            <h3 style="font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif">Recent Products</h3>
            <br>
            <div class="row">
                <div class="col-sm-2 ">

                    <img src="../Assets/Images/Headphone/1.jpg" class="img-responsive" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p style="font-size: small;">Soundcore by Anker Life Q20 With Hybrid </p>
                </div>
                <div class="col-sm-2 ">
                    <img src="../Assets/Images/Headphone/2m.jpg" style="width: 100%;" class="img-responsive" alt="Img" />

                    Razer BlackShark V2 Pro - White Edition Bluetooth Gaming Headset  
                </div>
             <div class="col-sm-2 ">
                    <img src="../Assets/Images/Headphone/3d.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p>Soundcore by Anker Life Q35 With Targeted Active Noise Cancellation </p>
                </div>
                <div class="col-sm-2 ">
                    <img src="../Assets/Images/Headphone/4d.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p>HyperX Cloud Alpha S 7.1 Surround Sound Bass and Adjustment</p>
                </div>
                <div class="col-sm-2 ">
                    <img src="../Assets/Images/Headphone/5g.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p>Audio Technica ATH-M50x Wired without Mic Headset  </p>
                </div>

                <div class="col-sm-2 ">
                    <img src="../Assets/Images/Headphone/6d.jpg" style="width: 100%;" class="img-responsive" alt="Img" />
                    <p>SONY WH-XB900N Active noise cancellation enabled Bluetooth</p>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <footer class="container-fluid text-center jumbotron">
            <p style="font-size:small"> 2022 @ Copyright Reserved | BoAt-X inc.. </p>
            <p style="font-size:smaller">Developed And Maintained By IyAppAn</p>
        </footer>
    </form>
</body>
</html>

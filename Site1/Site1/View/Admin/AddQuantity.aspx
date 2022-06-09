<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminN.Master" AutoEventWireup="true" CodeBehind="AddQuantity.aspx.cs" Inherits="Site1.View.Admin.AddQuantity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Quantity</title>

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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm-3" >
                <div class="form-group">
                    <label >Item Name</label>
                    <asp:DropDownList ID="dditems"   runat="server">

                    </asp:DropDownList>
                </div>
            </div>

             <div class="col-sm-3" >
                <div class="form-group">
                    <label >Quantity </label>
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
             <div class="col-sm-3" >
                 <asp:Button ID="btnadd" CssClass="btn btn-success" runat="server" Text="Add " OnClick="btnadd_Click" />
                </div>
        </div>
        <div class="row">

            <div class="col-sm-12">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" Caption="Add Quantity Record" CssClass="table" runat="server"></asp:GridView>



                </div>


            </div>


        </div>




    </div>


</asp:Content>

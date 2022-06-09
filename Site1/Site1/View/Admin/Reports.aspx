<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminN.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Site1.View.Admin.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Reports</title>

    <link href="../../Assets/BS3/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Assets/BS3/bootstrap.min.js"></script>

    <script src="../Assets/BS3/bootstrap.min.js"></script>

    <style>
        footer {
            background: #f2f2f2;
            padding: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
                <div class="row">
                    <div class="col-sm-3">
                        <label>Select Category</label>
                    <asp:DropDownList ID="Ddcate" runat="server" CssClass="form-control" > </asp:DropDownList>
                    </div>
                    <div class="col-sm-3">
                    <asp:Button ID="BtnSearch" CssClass="btn btn-info" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    </div>
                <div class="row">
                    <div class="col-sm-8">
                        <asp:GridView ID="GridView1" CssClass="table table-responsive " runat="server"  HeaderStyle-ForeColor="#006699" AutoGenerateColumns="false" EmptyDataText="*No Record Found....">
                            <Columns>
                                <asp:TemplateField HeaderText="Image">
                                  <ItemTemplate>
                                      <asp:Image ID="image1" ImageUrl='<%#Eval("Image")%>'  CssClass="img-responsive" runat="server" Width="70px" Height="70px" />
                                  </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:BoundField  DataField="Product" HeaderText="Product" />
                                <asp:BoundField  DataField="Price" HeaderText="Price" />
                                <asp:BoundField  DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField  DataField="AvaibleQnt" HeaderText="Availble Qnt" />
                                <asp:BoundField  DataField="SQnt" HeaderText="SQnt" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
</asp:Content>

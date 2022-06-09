<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminN.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Site1.View.Admin.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Category</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../Assets/BS3/bootstrap.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert">
        <div class="row">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4">

                <div class="form-group">

                    <label>Add Category</label>

                    <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Add" OnClick="btnAdd_Click" />
                </div>

            </div>
            <div class="col-sm-4">
            </div>


        </div>


        <div class="row">

            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="form-group">
                    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="CID">
                        <Columns>
                            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>


                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                         ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Category] ([Category]) VALUES (@Category)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Category] = @Category WHERE [CID] = @CID">
                        <DeleteParameters>
                            <asp:Parameter Name="CID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Category" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="CID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>

            </div>
        </div>
    </div>
</asp:Content>

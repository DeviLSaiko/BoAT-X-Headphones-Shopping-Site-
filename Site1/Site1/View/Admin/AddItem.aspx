<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminN.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Site1.View.Admin.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Items</title>


    <script src="../../Assets/BS3/jquery.min.js"></script>
    <script src="../../Assets/BS3/bootstrap.min.js"></script>
    <link href="../../Assets/BS3/bootstrap.min.css" rel="stylesheet" />


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="../Assets/BS3/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  class="row" >

        <div class="col-sm-2"></div>


            <div class="col-sm-8">

                <div class="form-group">
                    <label>Item Name</label>
                    <asp:TextBox ID="txtIName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label>Description</label>
                    <asp:TextBox ID="txtDescrp" CssClass="form-control"  runat="server"></asp:TextBox>
                </div>
                    <div class="form-group">
                    <label>Size</label>
                       <asp:DropDownList ID="DdSize" CssClass="form-control" runat="server">
                           <asp:ListItem Text=" Normal" Value="1"></asp:ListItem>
                           <asp:ListItem Text=" Small" Value="2"></asp:ListItem>

                       </asp:DropDownList>
                </div>
                   <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="DdCate" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                   <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label>Quantity</label>
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                   <div class="form-group">
                    <label>Image 1</label>
                       <asp:FileUpload ID="FileUpload1" CssClass="form-control"  runat="server" />
                </div>
                   <div class="form-group">
                    <label>Image 2</label>
                   <asp:FileUpload ID="FileUpload2" CssClass="form-control"  runat="server" />
                </div>
                   <div class="form-group">
                       <asp:Button ID="BtnAdd" CssClass="btn btn-success" runat="server" Text="Add Item" OnClick="BtnAdd_Click" />
                </div>
            </div>
         <div class="col-sm-2"></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="table">
                <asp:GridView ID="GridView1" CssClass="table table-responsive " runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                        <asp:BoundField DataField="Description1" HeaderText="Description1" SortExpression="Description1" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                        <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                        <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
                        <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StoreDBConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [IID] = @IID" InsertCommand="INSERT INTO [Items] ([ItemName], [Description1], [Price], [Category], [size], [image2], [image1], [Qnt]) VALUES (@ItemName, @Description1, @Price, @Category, @size, @image2, @image1, @Qnt)" SelectCommand="SELECT [ItemName], [Description1], [Price], [Category], [size], [IID], [image2], [image1], [Qnt] FROM [Items]" UpdateCommand="UPDATE [Items] SET [ItemName] = @ItemName, [Description1] = @Description1, [Price] = @Price, [Category] = @Category, [size] = @size, [image2] = @image2, [image1] = @image1, [Qnt] = @Qnt WHERE [IID] = @IID">
                <DeleteParameters>
                    <asp:Parameter Name="IID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Description1" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="image2" Type="String" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="Qnt" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Description1" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="image2" Type="String" />
                    <asp:Parameter Name="image1" Type="String" />
                    <asp:Parameter Name="Qnt" Type="Int32" />
                    <asp:Parameter Name="IID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site1.View.Admin
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindCategory();
                }
            }
            else
            {
                Response.Redirect("admin_Login.aspx");
            }
    }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog = StoreDB; Integrated Security =SSPI ";
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        { 
            if (IsFormValid())
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("/img/") + FileUpload2.FileName);
                SqlConnection Sqlconnection = new SqlConnection(MyConnection());

                string MyQ = " insert into Items (ItemName,Description1,Price,Qnt,Category,image1,image2,size) values  (@ItemName,@Description1,@Price,@Qnt,@Category,@image1,@image2,@size)";
                SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);

                if (Sqlconnection.State == ConnectionState.Closed)
                {
                    Sqlconnection.Open();
                }
                cmd.Parameters.AddWithValue("@ItemName", txtIName.Text);
                cmd.Parameters.AddWithValue("@Description1", txtDescrp.Text);
                cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@Qnt",txtQuantity.Text);
                cmd.Parameters.AddWithValue("@Category", DdCate.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@image1", "~/img/" +FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@image2", "~/img/" +FileUpload2.FileName);
                cmd.Parameters.AddWithValue("@Size", DdSize.SelectedItem.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert(' Items Added ');</script>");
            }
            else
            {
                Response.Write("<script>alert(' Valitation Error ');</script>");
            }
        }
        private bool IsFormValid()
        {
            if(txtIName.Text==string.Empty )
            {
                Response.Write("<script>alert('UserName Requried');</script>");
                txtIName.Text = string.Empty;
                txtIName.Focus();
                return false;
            }
            if (txtDescrp.Text == string.Empty)
            {
                Response.Write("<script>alert('Description Requried');</script>");
                txtDescrp.Text = string.Empty;
                txtDescrp.Focus();
                return false;
            }

            if (txtPrice.Text == string.Empty)
            {
                Response.Write("<script>alert('Price Requried');</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;
            }

            if (txtQuantity.Text == string.Empty)
            {
                Response.Write("<script>alert('Quantity Requried');</script>");
                txtQuantity.Text = string.Empty;
                txtQuantity.Focus();
                return false;
            }

            if (DdCate.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Category Requried');</script>");
                DdCate.Focus();
                return false;
            }
            if (DdSize.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Size Requried');</script>");
                DdSize.Focus();
                return false;
            }
            return true;
        }
        private void BindCategory()
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());
            String MyQ = "Select CID,Category From Category";
            SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);
            SqlDataAdapter myada = new SqlDataAdapter(cmd);
            DataTable MyTable = new DataTable();
            myada.Fill(MyTable);
            if (MyTable.Rows.Count > 0)
            {
                DdCate.DataSource = MyTable;
                DdCate.DataTextField = "Category";
                DdCate.DataValueField = "CID";
                DdCate.DataBind();

            }
            else
            {
                DdCate.DataSource = null;
                DdCate.DataBind();

            }
        }



        }
       
}




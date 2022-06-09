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
    public partial class Reports : System.Web.UI.Page
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
        private void BindCategory()
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());
            String MyQ = "Select distinct CID,Category FROM Category";
            SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);
            SqlDataAdapter myada = new SqlDataAdapter(cmd);

            DataTable MyTable = new DataTable(); 
            myada.Fill(MyTable);
            
            if (MyTable.Rows.Count > 0)
            {
                Ddcate.DataSource = MyTable;
                Ddcate.DataTextField = "Category";
                Ddcate.DataValueField = "CID";
                Ddcate.DataBind();

            }
            else
            {
                Ddcate.DataSource = null;
                Ddcate.DataBind();

            }
        }
        private void BindGridView()
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());
            String MyQ = "select image1 As Image , itemName as [Product] ,  Price , isnull(Qnt,0) as Quantity , isnull(aQnt,0) as [AvaibleQnt],isnull(SQnt ,0) as [SQnt] from Items where Category=@Category";

            SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);
            cmd.Parameters.AddWithValue("@Category" , Ddcate.SelectedItem.Text);
            SqlDataAdapter myada = new SqlDataAdapter(cmd);
            DataTable MyTable = new DataTable();
            myada.Fill(MyTable);


            if (MyTable.Rows.Count > 0)
            {
                GridView1.DataSource = MyTable;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            BindGridView();
        }
    }
}
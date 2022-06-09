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
    public partial class AddQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {

                if (!IsPostBack)
                {
                    BindItems();
                    BindGridView();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        private string MyConnection()
        {
            return @"Data Source =.; Initial Catalog = StoreDB; Integrated Security =SSPI ";
        }
        private void BindItems()
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());
            String MyQ = "Select distinct IID , ItemName from Items";
            SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);
            SqlDataAdapter myada = new SqlDataAdapter(cmd);
            DataTable MyTable = new DataTable();
            myada.Fill(MyTable);
            if (MyTable.Rows.Count > 0)
            {
                dditems.DataSource = MyTable;
                dditems.DataTextField = "ItemName";
                dditems.DataValueField = "IID";
                dditems.DataBind();

            }
            else
            {
                dditems.DataSource = null;
                dditems.DataBind();

            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());

            SqlCommand cmd = new SqlCommand(" update items set  Qnt=Qnt+@Qnt where IID=@IID ", Sqlconnection);


            if (Sqlconnection.State == ConnectionState.Closed)
            {
                Sqlconnection.Open();
            }

            cmd.Parameters.AddWithValue("@Qnt", txtQuantity.Text);
            cmd.Parameters.AddWithValue("@IID",dditems.SelectedValue);
            cmd.ExecuteNonQuery();
            Sqlconnection.Close();

            txtQuantity.Text = string.Empty;
            Response.Write("<Script>alert('Quantity Added' )</Script>");
            BindGridView();

        }
      
        private void BindGridView()
        {
            SqlConnection Sqlconnection = new SqlConnection(MyConnection());
            String MyQ = "select ItemName , isnull(Qnt,0) as Quantity , isnull(aQnt,0) as AvaibleQnt,isnull(SQnt ,0) as SQnt from Items";

            SqlCommand cmd = new SqlCommand(MyQ, Sqlconnection);
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
                dditems.DataBind();

            }
        }
       

    }
}
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
    public partial class AddCategory : System.Web.UI.Page
    {

        string MyCon = @"Data Source =.; Initial Catalog = StoreDB; Integrated Security =SSPI ";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon))

                if (Session["UserName"] != null)
                {

                    if (IsPostBack)
                    {
                       // BindingGridView();
                    }
                }

                else
                {
                    Response.Redirect("Login.aspx");
                }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon))
            {
                SqlCommand cmd = new SqlCommand(" insert into Category (Category) Values(@Category)", Sqlconnection);

                if (Sqlconnection.State == ConnectionState.Closed)
                {
                    Sqlconnection.Open();
                }
                cmd.Parameters.AddWithValue("@Category", txtCategory.Text.Trim());

                cmd.ExecuteNonQuery();

                Sqlconnection.Close();
                Response.Write("<Script>alert('Added Successfully');</script>");
                //BindingGridView();

                txtCategory.Text = String.Empty;
            }


        }

        private void BindingGridView()

        {
            SqlConnection Sqlconnection = new SqlConnection(MyCon);

            SqlCommand cmd = new SqlCommand(" Select CID,Category From Category ", Sqlconnection);

            if (Sqlconnection.State == ConnectionState.Closed)
            {
                Sqlconnection.Open();
            }
            SqlDataAdapter Myada = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Myada.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
             else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
           
        }
        }


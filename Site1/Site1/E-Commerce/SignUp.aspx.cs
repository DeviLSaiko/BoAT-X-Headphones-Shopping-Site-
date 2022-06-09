using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site1.E_Commerce
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
            protected void btnSign_Click(object sender, EventArgs e)
        {
            string MyCon = @"Data Source =.; Initial Catalog = StoreDB; Integrated Security =SSPI ";

            using (SqlConnection sqlconnection = new SqlConnection(MyCon))
            {
                sqlconnection.Open();

                string InstQ = "insert into UserInfo (Name , UserID, Mobile , Email,City ,ZipCode ,Gender , Password,CreatedDate ) Values (@Name , @UserID, @Mobile , @Email,@City ,@ZipCode ,@Gender , @Password,@CreatedDate)";
                SqlCommand MyCmd = new SqlCommand(InstQ, sqlconnection);
                MyCmd.Parameters.AddWithValue("@Name", txtName.Text);
                MyCmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
                MyCmd.Parameters.AddWithValue("@Mobile", txtMob.Text);
                MyCmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                MyCmd.Parameters.AddWithValue("@City", txtCity.Text);
                MyCmd.Parameters.AddWithValue("@ZipCode", txtZip.Text);
                MyCmd.Parameters.AddWithValue("@Gender", DDGen.SelectedItem.Text);
                MyCmd.Parameters.AddWithValue("@Password", txtConPass.Text);
                MyCmd.Parameters.AddWithValue("@CreatedDate", txtDate.Text);


                MyCmd.ExecuteNonQuery();
                sqlconnection.Close();


                txtName.Text = "";
                txtUserID.Text = "";
                txtMob.Text = "";
                txtEmail.Text = "";
                txtCity.Text = "";
                txtZip.Text = "";
                txtConPass.Text = "";
                txtDate.Text = "";
                DDGen.SelectedIndex = -1;



                TxtAlrt.Text = "Account Created.....";


            }
        }
    }
    }

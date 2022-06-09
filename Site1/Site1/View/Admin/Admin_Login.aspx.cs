using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site1.View.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {

        String MyCon = @"Data Source =.; Initial Catalog = StoreDB; Integrated Security =SSPI ";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Remove("UserName");
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            using (SqlConnection Sqlconnection = new SqlConnection(MyCon))


                if (isformVaild())
                {
                    //Response.Write("<script>alert('Hello');</script>");
                    if(Sqlconnection.State==ConnectionState.Closed)
                    {
                        Sqlconnection.Open();
                    }

                    try
                    {

                        SqlCommand cmd = new SqlCommand("  SELECT UserName , Password from AdminInfo  where UserName=@UserName and Password=@Password", Sqlconnection);
                      
                        cmd.Parameters.AddWithValue("@UserName", txtUserID.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPass.Text.Trim());
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                        while(dr.Read())
                            {
                                Session["UserName"] = dr.GetValue(0).ToString();

                                Response.Write("<Script>alert('Login Success');</script>");
                                Response.Redirect("~/View/Admin/AdminHome.aspx");
                            }
                        }
                        else
                        {
                            Response.Write("<Script>alert('Login Failed');</script>");
                           // Response.Redirect("~/View/Admin/Admin_Login.aspx");

                            txtUserID.Text = string.Empty;
                            txtPass.Text= string.Empty;
                            txtUserID.Focus();

                        }
                    }

                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }
                else
                {
                  Response.Write("<script>alert('Invaild Login Error....');</script>");
                
                }
        }
        private bool isformVaild()
        {
            if (txtUserID.Text == string.Empty)
            {
                Response.Write("<script>alert('UserName Requried');</script>");
                txtUserID.Text = string.Empty;
                txtUserID.Focus();
                return false;
            }
            if (txtPass.Text == string.Empty)
            {
                Response.Write("<script>alert('Password Requried');</script>");
                txtPass.Text = string.Empty;
                txtPass.Focus();
                return false;
            }
            return true;
        }
    }
}
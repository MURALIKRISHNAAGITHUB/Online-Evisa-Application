using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVisaApplictaion
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connection.Open();

            string query = "SELECT * FROM ApplicantUSer WHERE Username = @Username AND Password = @Password";

            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    Session["UserID"] = reader["UserID"].ToString();
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("Home.aspx");
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                }
                else
                {
                    Response.Write("Invalid username and password");

                }
            }
            connection.Close();
        }
    }
}
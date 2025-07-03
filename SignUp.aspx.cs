using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVisaApplictaion
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SaveApplicantUser", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("name", txtName.Text);
                cmd.Parameters.AddWithValue("phoneno", txtPhoneNumber.Text);
                cmd.Parameters.AddWithValue("Email", txtEmailID.Text);
                cmd.Parameters.AddWithValue("username", txtUsername.Text);
                cmd.Parameters.AddWithValue("password", txtPassword.Text);
                cmd.Parameters.AddWithValue("Question1", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("Answer1", txtAnswer1.Text);
                int result = cmd.ExecuteNonQuery();
                connection.Close();
                if (result == 1)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("Not added");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
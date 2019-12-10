using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_connect
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerFormConnectionString1"].ConnectionString);
            conn.Open();
            string userid = username.Text;
            string password = Password.Text;
            SqlCommand cmd = new SqlCommand("select Email,Password from registrationdetails where Email='" + username.Text + "'and Password='" + Password.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
               
                Response.Redirect("ProfilePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('You have entered wrong Email or Password ')</script>");
             
            }
            conn.Close();
           
        }

    }
}
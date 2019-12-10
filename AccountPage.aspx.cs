using System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Doctor_connect
{
    public partial class AccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["registerFormConnectionString1"].ConnectionString);
            conn1.Open();
            

            string email1 = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("SELECT FirstName,LastName,Email FROM registrationdetails WHERE Email = '" + TextBox2.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                SqlDataReader sdr = cmd.ExecuteReader();

                sdr.Read();
                TextBox6.Text = sdr["FirstName"].ToString();
                TextBox7.Text = sdr["LastName"].ToString();
                TextBox8.Text = sdr["Email"].ToString();
                TextBox11.Text = (int.Parse(TextBox9.Text) - int.Parse(TextBox10.Text)).ToString();

            }
            else
            {
                Response.Write("<script>alert('The Email ID entered is Invalid or not yet registed!!! ')</script>");
            }

           
            conn1.Close();
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePage.aspx");
        }

        protected void Butto10_Click(object sender, EventArgs e)
        {

        }
    }
}
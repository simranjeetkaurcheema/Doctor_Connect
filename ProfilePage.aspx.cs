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
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerFormConnectionString1"].ConnectionString);
            conn.Open();
            string email = TextBox1.Text;
            SqlCommand cmd = new SqlCommand("SELECT FirstName,LastName,Email,Gender,Expertise FROM registrationdetails WHERE Email = '" + TextBox1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                SqlDataReader sdr = cmd.ExecuteReader();

                sdr.Read();
                TextBox3.Text = sdr["FirstName"].ToString();
                TextBox4.Text = sdr["LastName"].ToString();
                TextBox5.Text = sdr["Email"].ToString();
                TextBox8.Text = sdr["Gender"].ToString();
                TextBox2.Text = sdr["Expertise"].ToString();

            }
            else
            {
                Response.Write("<script>alert('The Email ID entered is Invalid or not yet registed!!! ')</script>");
            }
            
                     conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePage.aspx");
        }
    }
}

     
      
    

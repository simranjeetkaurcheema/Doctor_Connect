using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_connect
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerFormConnectionString1"].ConnectionString);
                conn.Open();//Add data to the sql database
                string insertQuery = "insert into registrationdetails(FirstName,LastName,Email,Password,Month,Day,Year,Gender,Expertise)values (@FirstName,@LastName,@Email,@Password,@Month,@Day,@Year,@Gender,@Expertise)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", LastName.Text);
                cmd.Parameters.AddWithValue("@Email", Email.Text);
                cmd.Parameters.AddWithValue("@Password", Password.Text);
                cmd.Parameters.AddWithValue("@Month", Month.Text);
                cmd.Parameters.AddWithValue("@Day", Day.Text);
                cmd.Parameters.AddWithValue("@Year", Year.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender.Text); 
                cmd.Parameters.AddWithValue("@Expertise", Expertise.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Registeration Successfully!!!thank you");
                Response.Redirect("MainPage.aspx");
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }
                
    }
}
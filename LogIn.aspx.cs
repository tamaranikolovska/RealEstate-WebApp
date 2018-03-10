using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace WebApplication1
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from UserRegistration where username = @Username and passw = @Password", con);
            cmd.Parameters.AddWithValue("@Username", this.UsernameLogInTextBox.Text);
            cmd.Parameters.AddWithValue("@Password", this.PasswordLogInTextBox.Text);
            //cmd.Parameters.AddWithValue("@Userstatus", StatusDropLogInDownList.SelectedItem.ToString());
            con.Open();
            //var temp = cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                Session["NameOfUser"] = UsernameLogInTextBox.Text;
                /*if (StatusDropLogInDownList.SelectedItem.Text == "User")
                {
                    Response.Redirect("User.aspx");
                }
                else if (StatusDropLogInDownList.SelectedItem.Text == "Agent")
                {
                    Response.Redirect("Agent.aspx");
                }
                else if (StatusDropLogInDownList.SelectedItem.Text == "Administrator")
                {
                    Response.Redirect("Administrator.aspx");
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('The credentials that you have provided are incorrect');window.location='Agent.aspx';</script>'");
                }*/
                rd.Read();
                Session["StatusOfUser"] = rd[3].ToString();
                if (rd[3].ToString().Equals("User"))
                {
                    Response.Redirect("User.aspx");
                    //Response.Redirect("Home.aspx");
                }
                else if (rd[3].ToString().Equals("Agent"))
                {
                    Response.Redirect("Agent.aspx");
                    //Response.Redirect("Home.aspx");
                }
                else if (rd[3].ToString().Equals("Administrator"))
                {
                    Response.Redirect("Administrator.aspx");
                    //8Response.Redirect("Home.aspx");
                }
            }
            else 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('The credentials that you have provided are incorrect');window.location='LogIn.aspx';</script>'");
            }
            con.Close();
        }

        protected void GobackhomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
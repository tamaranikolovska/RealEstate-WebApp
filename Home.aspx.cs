using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from RealEstates", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            LogOutButton.Visible = false;

            if (Session["NameOfUser"] != null && Session["StatusOfUser"] != null)
            {
                StatusofUserLogedInLabel.Text = Session["StatusOfUser"].ToString() + ": ";
                NameofUserLogedInLinkButton.Text = Session["NameOfUser"].ToString();
                LogOutButton.Visible = true;
                LogInButton.Visible = false;
            }

            if (Session["flag"] != null)
            {
                NameofUserLogedInLinkButton.Text = "";
                StatusofUserLogedInLabel.Text = "";
                LogInButton.Visible = true;
                LogOutButton.Visible = false;
            }

            if (Session["flag1"] != null)
            {
                NameofUserLogedInLinkButton.Text = "";
                StatusofUserLogedInLabel.Text = "";
                LogInButton.Visible = true;
                LogOutButton.Visible = false;
            }

            if ((Session["flag2"] != null) || (Session["blabla"] != null))
            {
                NameofUserLogedInLinkButton.Text = "";
                StatusofUserLogedInLabel.Text = "";
                LogInButton.Visible = true;
                LogOutButton.Visible = false;
            }
        }

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            NameofUserLogedInLinkButton.Text = "";
            StatusofUserLogedInLabel.Text = "";
            LogInButton.Visible = true;
            LogOutButton.Visible = false;
        }

        protected void NameofUserLogedInLinkButton_Click(object sender, EventArgs e)
        {
            if (StatusofUserLogedInLabel.Text.StartsWith("U"))
            {
                Response.Redirect("User.aspx");
            }
            else if (StatusofUserLogedInLabel.Text.StartsWith("Ag"))
            {
                Response.Redirect("Agent.aspx");
            }
            else if (StatusofUserLogedInLabel.Text.StartsWith("Ad"))
            {
                Response.Redirect("Administrator.aspx");
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }

        protected void Clicktoseedetails(object sender, EventArgs e)
        {
            var readmoreLinkButton = (LinkButton)sender;
            Session["reid"] = readmoreLinkButton.CommandArgument;
            //Response.Redirect("RealEstateAllDetails.aspx");
            string url = "RealEstateAllDetails.aspx";
            string  s = "window.open('" + url + "', 'popup_window', 'width=760,height=400,left=300,top=100,resizable=yes');";
            //string s = "window.open('" + url + "', '_blank');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }

        protected void SearchRealEstateButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter(DynamicSqlQuary(), con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            /*if (!String.IsNullOrEmpty(PriceFromDropDownList.SelectedItem.Text) && String.IsNullOrEmpty(PricetoDropDownList.SelectedItem.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('If you have entered *Price from* you must also enter a value for *Price to*');window.location='Home.aspx';</script>'");
            }
            else if (String.IsNullOrEmpty(PriceFromDropDownList.SelectedItem.Text) && !String.IsNullOrEmpty(PricetoDropDownList.SelectedItem.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('If you have entered *Price to* you must also enter a value for *Price from*');window.location='Home.aspx';</script>'");
            }*/
            //TextBox1.Text = DynamicSqlQuary();
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected string DynamicSqlQuary()
        {
            int pricefrom;
            Int32.TryParse(PriceFromDropDownList.SelectedItem.ToString(), out pricefrom);
            int priceto;
            Int32.TryParse(PricetoDropDownList.SelectedItem.ToString(), out priceto);
            int areafrom;
            Int32.TryParse(AreaFromDropDownList.SelectedItem.ToString(), out areafrom);
            int areato;
            Int32.TryParse(AreatoDropDownList.SelectedItem.ToString(), out areato);

            string query = "select * from dbo.RealEstates where 1=1 ";
            if (!String.IsNullOrEmpty(CategoryDropDownList.SelectedItem.Text))
            {
                query += "and category = '" + CategoryDropDownList.SelectedItem.ToString() + "' ";
            }
            if (!String.IsNullOrEmpty(StatusDropDownList.SelectedItem.Text)) { 
                query += "and restatus = '"+ StatusDropDownList.SelectedItem.ToString() +"' ";
            }
            if ((!String.IsNullOrEmpty(PriceFromDropDownList.SelectedItem.Text)) && (!String.IsNullOrEmpty(PricetoDropDownList.SelectedItem.Text)))
            {
                query += "and price between " + pricefrom + " and " + priceto + " ";
            }
            if (!String.IsNullOrEmpty(AreaFromDropDownList.SelectedItem.Text) && !String.IsNullOrEmpty(AreatoDropDownList.SelectedItem.Text)) 
            {
                query += "and aream2 between " + areafrom + " and " + areato + " ";
            }
            if (!String.IsNullOrEmpty(CityDropDownList.SelectedItem.Text))
            {
                query += "and city = '" + CityDropDownList.SelectedItem.ToString() + "' ";
            }

            return query;
        }

        protected void ContactAgent_OnClick(object sender, EventArgs e)
        {
            if (NameofUserLogedInLinkButton.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are not loged in. Please log in to contact agent.')", true);
            }
            else 
            {
                string url = "SendMessagePopUp.aspx";
                string s = "window.open('" + url + "', 'popup_window', 'width=590,height=530,left=300,top=100,resizable=no');";
                ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
            }
        }

        protected void takemetofacebook(object sender, EventArgs e)
        {
            string url = "http://www.facebook.com";
            string s = "window.open('" + url + "', 'popup_window', 'width=590,height=530,left=300,top=100,resizable=no');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);

        }

        protected void takemetoinsta(object sender, EventArgs e)
        {
            string url = "http://www.instagram.com";
            string s = "window.open('" + url + "', 'popup_window', 'width=590,height=530,left=300,top=100,resizable=no');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }

        protected void takemetotwitter(object sender, EventArgs e)
        {
            string url = "http://www.twitter.com";
            string s = "window.open('" + url + "', 'popup_window', 'width=590,height=530,left=300,top=100,resizable=no');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }

        protected void Ilikethisrealestate_OnClick(object sender, EventArgs e)
        {
            if (StatusofUserLogedInLabel.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are not loged in.')", true);
            }
            else
            {
                LinkButton lbtn = (LinkButton)(sender);
                SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("if not exists (select * from dbo.UserLikes where usernamee = @usernamee and realestateid = '" + lbtn.CommandArgument + "') INSERT INTO dbo.UserLikes (usernamee, realestateid) values(@usernamee, @realestateid)", conn);
                cmd.Parameters.AddWithValue("@usernamee", NameofUserLogedInLinkButton.Text);
                cmd.Parameters.AddWithValue("@realestateid", lbtn.CommandArgument);
                conn.Open();
                cmd.ExecuteScalar();
                conn.Close();
            }

        }

        protected void AboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void ContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }
    }
}
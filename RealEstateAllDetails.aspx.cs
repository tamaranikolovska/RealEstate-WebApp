using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class RealEstateAllDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            realestateidTextBox.Visible = false;
            realestateidTextBox.Text = Session["reid"].ToString();

            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from RealEstates where id = @id", con);
            cmd.Parameters.AddWithValue("@id", this.realestateidTextBox.Text);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                CateogrynameLabel.Text = rd[1].ToString();
                Image1.ImageUrl = rd[2].ToString();
                Image2.ImageUrl = rd[3].ToString();
                Image3.ImageUrl = rd[4].ToString();
                Image4.ImageUrl = rd[5].ToString();
                Image5.ImageUrl = rd[6].ToString();
                Image6.ImageUrl = rd[7].ToString();
                Image7.ImageUrl = rd[8].ToString();
                Image8.ImageUrl = rd[9].ToString();
                agentnameLabel.Text = rd[10].ToString();
                DescriptionLabel.Text = rd[11].ToString();
                noofroomsLabel.Text = rd[15].ToString();
                Areamm2Label.Text = rd[16].ToString();
                StatusnameLabel.Text = rd[19].ToString();
                AddressNameLabel.Text = rd[12].ToString();
                citynameLabel.Text = rd[13].ToString();
                CountrynameLabel.Text = rd[14].ToString();
                PricesumLabel.Text = rd[17].ToString();
                CurrencynameLabel.Text = rd[18].ToString();
                OwnernameLabel.Text = rd[20].ToString();
                PhonenumberLabel.Text = rd[21].ToString();
            }
            con.Close();
        }

        protected void HomefromRealEstateAllDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void RegistrateFromRealEstateAllDetailsButton0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void LogInFromRealEstateAllDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

    }
}
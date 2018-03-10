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
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from AdministratorUnapprovedPublishes", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

           /* SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            con.Open();  // open the connection 
            SqlDataAdapter Sqa = new SqlDataAdapter("select * from dbo.AdministratorUnapprovedPublishes", con);
            DataSet ds = new DataSet();
            Sqa.Fill(ds);   // fill the dataset 
            GridView1.DataSource = ds; // give data to GridView
            GridView1.DataBind();
            con.Close();*/

            Session["flag1"] = null;
            Session["flag"] = null;
            Session["flag2"] = null;

            adminsendername.Text = Session["NameOfUser"].ToString();
            adminsendername.Enabled = false;
        }

        protected void HomeFromAdminButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LogoutFromAdminButton_Click(object sender, EventArgs e)
        {
            Session["flag"] = "blabla";
            Response.Redirect("Home.aspx");
        }

        protected void ListofUnapprovedpublishButtonAdmin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void MessagesButtonAdmin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

            SqlConnection con1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Messagess where sender = '" + adminsendername.Text + "'", con1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            adminSendMessagesRepeater2.DataSource = dt1;
            adminSendMessagesRepeater2.DataBind();


            SqlConnection con2 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda2 = new SqlDataAdapter("select * from Messagess where receiver like '" + adminsendername.Text + "' + '%' ", con2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            adminReceivedMessagesRepeater2.DataSource = dt2;
            adminReceivedMessagesRepeater2.DataBind();
        }

        protected void ApprovePublish(object sender, EventArgs e)
        {
            var approvelinkbtn = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into dbo.RealEstates (category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, noofrooms, aream2, price, currency, restatus, ownername, contactphone) select category, img1, img2, img3,img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, noofrooms, aream2, price, currency, restatus, ownername, contactphone from dbo.AdministratorUnapprovedPublishes where id = @id", conn);
            SqlCommand cmd1 = new SqlCommand("delete from dbo.AdministratorUnapprovedPublishes where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", approvelinkbtn.CommandArgument);
            cmd1.Parameters.AddWithValue("@id", approvelinkbtn.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void DenyPublish(object sender, EventArgs e)
        {
            var denylinkbtn = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.AdministratorUnapprovedPublishes where id = @id", conn);
            cmd1.Parameters.AddWithValue("@id", denylinkbtn.CommandArgument);
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AdminDeleteMessage(object sender, EventArgs e)
        {
            var deletemessageLinkButton5 = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton5.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AdminDeleteMessage45(object sender, EventArgs e)
        {
            var deletemessageLinkButton45 = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton45.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AdminSendMessageButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into dbo.Messagess (sender, receiver, subjectt, content) values(@sender, @receiver, @subjectt, @content)", conn);
            cmd.Parameters.AddWithValue("@sender", adminsendername.Text);
            cmd.Parameters.AddWithValue("@receiver", adminPickReceiverDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subjectt", adminTextBox10.Text);
            cmd.Parameters.AddWithValue("@content", adminMessageContent.Value);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }


        
    }
}
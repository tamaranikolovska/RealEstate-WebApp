using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Agent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AgentsusernameTextBox.Text = Session["NameOfUser"].ToString();
            AgentsusernameTextBox.Visible = false;

            agentsendername.Text = AgentsusernameTextBox.Text;
            agentsendername.Enabled = false;

            MultiView1.ActiveViewIndex = 0;

            Session["flag1"] = null;
            Session["flag"] = null;
            Session["flag2"] = null;

            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from RealEstates where agentName = '" + AgentsusernameTextBox.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void HomeFromAgentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LogoutFromAgentButton_Click(object sender, EventArgs e)
        {
            Session["flag1"] = "blabla";
            Response.Redirect("Home.aspx");
        }

        protected void ListOfMyRealEstatesButtonAgent_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void MessagesButtonAgent_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

            SqlConnection con1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Messagess where sender = '" + agentsendername.Text + "'", con1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            agentSendMessagesRepeater2.DataSource = dt1;
            agentSendMessagesRepeater2.DataBind();


            SqlConnection con2 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda2 = new SqlDataAdapter("select * from Messagess where receiver like '" + agentsendername.Text + "' + '%' ", con2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            agentReceivedMessagesRepeater2.DataSource = dt2;
            agentReceivedMessagesRepeater2.DataBind();
        }

        protected void SolvedPublish(object sender, EventArgs e)
        {
            var solvedlinkbtn = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.RealEstates where id = @id", conn);
            cmd1.Parameters.AddWithValue("@id", solvedlinkbtn.CommandArgument);
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AgentSendMessageButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into dbo.Messagess (sender, receiver, subjectt, content) values(@sender, @receiver, @subjectt, @content)", conn);
            cmd.Parameters.AddWithValue("@sender", agentsendername.Text);
            cmd.Parameters.AddWithValue("@receiver", agentPickReceiverDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subjectt", agentTextBox10.Text);
            cmd.Parameters.AddWithValue("@content", agentMessageContent.Value);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AgentDeleteMessage(object sender, EventArgs e)
        {
            var deletemessageLinkButton6 = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton6.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AgentDeleteMessage66(object sender, EventArgs e)
        {
            var deletemessageLinkButton66 = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton66.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void Repeater1_ItemCommand(object sender, EventArgs e) 
        { 
        
        }
    }
}
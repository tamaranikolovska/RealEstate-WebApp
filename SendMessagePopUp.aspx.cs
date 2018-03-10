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
    public partial class SendMessagePopUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageSuccessfullySendLabel.Visible = false;
            sendername10.Text = Session["NameOfUser"].ToString();
            sendername10.Enabled = false;
        }

        protected void PopUpSendMessageButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into dbo.Messagess (sender, receiver, subjectt, content) values(@sender, @receiver, @subjectt, @content)", conn);
            cmd.Parameters.AddWithValue("@sender", sendername10.Text);
            cmd.Parameters.AddWithValue("@receiver", PickReceiverDropDownList10.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subjectt", TextBox1010.Text);
            cmd.Parameters.AddWithValue("@content", MessageContent10.Value);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            MessageSuccessfullySendLabel.Visible = true;
            sendername10.Text = "";
            TextBox1010.Text = "";
            MessageContent10.Value = null;
        }

        protected void sendername10_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
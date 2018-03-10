using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox9.Visible = false;

            if (!IsPostBack)
            {
                    string[] filePaths = Directory.GetFiles(Server.MapPath("~/imagess/"));
                    List<ListItem> files = new List<ListItem>();
                    foreach (string filePath in filePaths)
                    {
                        files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                    }
                    GridView1.DataSource = files;
                    GridView1.DataBind();
            }

            
            MultiView1.ActiveViewIndex = 3;
            
            
            publisherusernameTextBox.Text = Session["NameOfUser"].ToString();
            publisherusernameTextBox.Enabled = false;
            sendername.Text = Session["NameOfUser"].ToString();
            sendername.Enabled = false;

            Session["flag1"] = null;
            Session["flag"] = null;
            Session["flag2"] = null;

            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from RealEstates where ownername = '" + publisherusernameTextBox.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            SqlConnection con1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from dbo.RecommendationForUsers where ru_user = '" + publisherusernameTextBox.Text + "' ", con1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            Repeater2SuggestionsForUser.DataSource = dt1;
            Repeater2SuggestionsForUser.DataBind();

            SqlDataSource3.SelectParameters.Clear();
            SqlDataSource3.SelectParameters.Add("ru_userr", Session["NameOfUser"].ToString());

            SqlDataSource4.SelectParameters.Clear();
            SqlDataSource4.SelectParameters.Add("ru_userrr", Session["NameOfUser"].ToString());
            //SqlDataSource4.SelectParameters.Add("ru_cityy", CityyDropDownList.SelectedValue.ToString());
            
            //tempLabel.Text = CityyDropDownList.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LogoutFromUserButton_Click(object sender, EventArgs e)
        {
            Session["flag2"] = "blabla";
            Response.Redirect("Home.aspx");
        }

        protected void SuggestionButton_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void PublishButton_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void MessagesButton_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            SqlConnection con1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("select * from Messagess where sender = '" + sendername.Text + "'", con1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            SendMessagesRepeater2.DataSource = dt1;
            SendMessagesRepeater2.DataBind();


            SqlConnection con2 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda2 = new SqlDataAdapter("select * from Messagess where receiver like '" + sendername.Text + "' + '%' ", con2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            ReceivedMessagesRepeater2.DataSource = dt2;
            ReceivedMessagesRepeater2.DataBind();
        }

        protected void NewPublishButton_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void uploadButton_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/imagess/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void staddTextBox_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void SubmitthepublishButton_Click(object sender, EventArgs e)
        {
            
            if (!string.IsNullOrEmpty(areaTextBox.Text) && !string.IsNullOrEmpty(phonecontactTextBox.Text))
            {
                if (GridView1.Columns.Count > 0)
                {
                    GridView1.AllowPaging = false;
                    foreach (GridViewRow row in GridView1.Rows)
                    {
                        for (int i = 0; i < GridView1.Columns.Count; i++)
                        {
                            TextBox1.Text += row.Cells[i].Text + " ";
                        }
                    }
                    GridView1.AllowPaging = true;
                    string[] tokens = TextBox1.Text.Split(new string[] { " " }, StringSplitOptions.RemoveEmptyEntries);
                    TextBox2.Text = tokens[0];
                    TextBox3.Text = tokens[1];
                    TextBox4.Text = tokens[2];
                    TextBox5.Text = tokens[3];
                    TextBox6.Text = tokens[4];
                    TextBox7.Text = tokens[5];
                    TextBox8.Text = tokens[6];
                    TextBox9.Text = tokens[7];
                }
                SqlConnection conn1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                string insertuser = "Insert into AdministratorUnapprovedPublishes (category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, noofrooms, aream2, price, currency, restatus, ownername, contactphone) Values(@category, @img1, @img2, @img3, @img4, @img5, @img6, @img7, @img8, @agentName, @descr, @streetaddress, @city, @noofrooms, @aream2, @price, @currency, @restatus, @ownername, @contactphone)";
                SqlCommand com = new SqlCommand(insertuser, conn1);
                //com.Parameters.AddWithValue("@userid", Int32.Parse(IdTextBox.Text));
                com.Parameters.AddWithValue("@category", CategoryDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@img1", "images/" + TextBox2.Text);
                com.Parameters.AddWithValue("@img2", "images/" + TextBox3.Text);
                com.Parameters.AddWithValue("@img3", "images/" + TextBox4.Text);
                com.Parameters.AddWithValue("@img4", "images/" + TextBox5.Text);
                com.Parameters.AddWithValue("@img5", "images/" + TextBox6.Text);
                com.Parameters.AddWithValue("@img6", "images/" + TextBox7.Text);
                com.Parameters.AddWithValue("@img7", "images/" + TextBox8.Text);
                com.Parameters.AddWithValue("@img8", "images/" + TextBox8.Text);
                com.Parameters.AddWithValue("@agentName", AgentDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@descr", DescTextArea.Value);
                com.Parameters.AddWithValue("@streetaddress", staddTextBox.Text);
                com.Parameters.AddWithValue("@city", cityDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@noofrooms", noofroomsDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@aream2", areaTextBox.Text);
                com.Parameters.AddWithValue("@price", priceTextBox.Text);
                com.Parameters.AddWithValue("@currency", currDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@restatus", statusDropDownList.SelectedItem.ToString());
                com.Parameters.AddWithValue("@ownername", publisherusernameTextBox.Text);
                com.Parameters.AddWithValue("@contactphone", phonecontactTextBox.Text);

                conn1.Open();
                com.ExecuteNonQuery();
                conn1.Close();
                moveimages();
                Response.Redirect(Request.Url.AbsoluteUri);
                
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('Area(m2), Street address, Price and Phone are required fields.');window.location='User.aspx';</script>'");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void moveimages()
        {
            string sourcePath = @"C:\Users\Tamara\Desktop\w\reappp.com\imagess";
            string targetPath = @"C:\Users\Tamara\Desktop\w\reappp.com\images";
            foreach (var srcPath in Directory.GetFiles(sourcePath))
            {
                File.Copy(srcPath, srcPath.Replace(sourcePath, targetPath), true);
            }

            DirectoryInfo di = new DirectoryInfo("C:\\Users\\Tamara\\Desktop\\w\\reappp.com\\imagess");
            foreach (FileInfo file in di.GetFiles())
            {
                file.Delete();
            }
        }

        protected void CategoryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CategoryDropDownList.SelectedValue == "bungalow" || CategoryDropDownList.SelectedValue == "camp trailer")
            {
                staddTextBox.Text = "/";
            }
            else {
                staddTextBox.Text = " ";
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void DeleteMessage(object sender, EventArgs e)
        {
            var deletemessageLinkButton = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void SendMessageButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into dbo.Messagess (sender, receiver, subjectt, content) values(@sender, @receiver, @subjectt, @content)", conn);
            cmd.Parameters.AddWithValue("@sender", sendername.Text);
            cmd.Parameters.AddWithValue("@receiver", PickReceiverDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subjectt", TextBox10.Text);
            cmd.Parameters.AddWithValue("@content", MessageContent.Value);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void DeleteMessage4(object sender, EventArgs e)
        {
            var deletemessageLinkButton4 = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from dbo.Messagess where id = @id", conn);
            cmd.Parameters.AddWithValue("@id", deletemessageLinkButton4.CommandArgument);
            conn.Open();
            cmd.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void SuggestMeNewREButton_Click(object sender, EventArgs e)
        {
            givemehouses();
            givemeapartments();
            givemecamptrilers();
            givemebungalows();
            givemeoffices();
        }


        protected void givemehouses()
        {
            //house
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            //query za proverka kolku postovi od tip HOUSE userot ima lajknato
            SqlCommand cmd = new SqlCommand("select count(*) from dbo.UserLikes ul, dbo.RealEstates re where ul.usernamee = @Username and ul.realestateid = re.id and re.category = @Category", conn);
            cmd.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd.Parameters.AddWithValue("@Category", "house");
            conn.Open();
            Int32 temp = (Int32)cmd.ExecuteScalar();
            conn.Close();
            if (temp >= 3)
            {
                //ako e 3 znaci ima osnov za preporaka na odredena kategorija - apartments.
                SqlConnection conn1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                //prvo query - za proverka dali postojat novi NElajknati postovi
                SqlCommand cmd1 = new SqlCommand("select count(*) from dbo.RealEstates re where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category)", conn1);
                cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                cmd1.Parameters.AddWithValue("@Category", "house");
                conn1.Open();
                Int32 temp1 = (Int32)cmd1.ExecuteScalar();
                conn1.Close();
                if (temp1 > 0)
                {
                    //superLabel1.Text = "yeeeeessss superrrrrrrrrrr";
                    SqlConnection conn2 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                    SqlCommand cmd2 = new SqlCommand("insert into dbo.RecommendationForUsers (ru_user, ru_category, ru_img1, ru_img2, ru_img3, ru_img4, ru_img5, ru_img6, ru_img7, ru_img8, ru_agentName, ru_descr, ru_streetaddress, ru_city, ru_country, ru_noofrooms, ru_aream2, ru_price, ru_currency, ru_restatus, ru_ownername, ru_contactphone, ru_realestateid) select distinct ul.usernamee, category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, country, noofrooms, aream2, price, currency, restatus, ownername, contactphone, re.id from dbo.RealEstates re, dbo.UserLikes ul where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and ul.usernamee = @Username and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and re.id not in (select rfu.ru_realestateid from dbo.RecommendationForUsers rfu)", conn2);
                    cmd2.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                    cmd2.Parameters.AddWithValue("@Category", "house");
                    conn2.Open();
                    cmd2.ExecuteScalar();
                    conn2.Close();
                }
            }
        }

        protected void givemeapartments()
        {
            //apartment
            SqlConnection connnapartmenttt = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            //query za proverka kolku postovi od tip APARTMENT userot ima lajknato
            SqlCommand cmdd = new SqlCommand("select count(*) from dbo.UserLikes ul, dbo.RealEstates re where ul.usernamee = @Username and ul.realestateid = re.id and re.category = @Category", connnapartmenttt);
            cmdd.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmdd.Parameters.AddWithValue("@Category", "apartment");
            connnapartmenttt.Open();
            Int32 tempp = (Int32)cmdd.ExecuteScalar();
            connnapartmenttt.Close();
            if (tempp >= 3)
            {
                //ako e 3 znaci ima osnov za preporaka na odredena kategorija - apartments.
                SqlConnection connapartment = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                //prvo query - za proverka dali postojat novi NElajknati postovi
                SqlCommand cmd1 = new SqlCommand("select count(*) from dbo.RealEstates re where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category)", connapartment);
                cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                cmd1.Parameters.AddWithValue("@Category", "apartment");
                connapartment.Open();
                Int32 temp1 = (Int32)cmd1.ExecuteScalar();
                connapartment.Close();
                if (temp1 > 0)
                {
                    //superLabel1.Text = "yeeeeessss superrrrrrrrrrr";
                    SqlConnection connapartment1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                    SqlCommand cmd2 = new SqlCommand("insert into dbo.RecommendationForUsers (ru_user, ru_category, ru_img1, ru_img2, ru_img3, ru_img4, ru_img5, ru_img6, ru_img7, ru_img8, ru_agentName, ru_descr, ru_streetaddress, ru_city, ru_country, ru_noofrooms, ru_aream2, ru_price, ru_currency, ru_restatus, ru_ownername, ru_contactphone, ru_realestateid) select distinct ul.usernamee, category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, country, noofrooms, aream2, price, currency, restatus, ownername, contactphone, re.id from dbo.RealEstates re, dbo.UserLikes ul where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and ul.usernamee = @Username and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and re.id not in (select rfu.ru_realestateid from dbo.RecommendationForUsers rfu)", connapartment1);
                    cmd2.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                    cmd2.Parameters.AddWithValue("@Category", "apartment");
                    connapartment1.Open();
                    cmd2.ExecuteScalar();
                    connapartment1.Close();
                }
            }
        }

        protected void givemecamptrilers()
        {
            //camp trailer
            SqlConnection connnncamptrailer = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            //query za proverka kolku postovi od tip CAMP TRAILER userot ima lajknato
            SqlCommand cmddd = new SqlCommand("select count(*) from dbo.UserLikes ul, dbo.RealEstates re where ul.usernamee = @Username and ul.realestateid = re.id and re.category = @Category", connnncamptrailer);
            cmddd.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmddd.Parameters.AddWithValue("@Category", "camp trailer");
            connnncamptrailer.Open();
            Int32 temppp = (Int32)cmddd.ExecuteScalar();
            connnncamptrailer.Close();
            if (temppp >= 3)
            {
                //ako e 3 znaci ima osnov za preporaka na odredena kategorija - apartments.
                SqlConnection connnncamptrailer1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                //prvo query - za proverka dali postojat novi NElajknati postovi
                SqlCommand cmd1 = new SqlCommand("select count(*) from dbo.RealEstates re where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category)", connnncamptrailer1);
                cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                cmd1.Parameters.AddWithValue("@Category", "camp trailer");
                connnncamptrailer1.Open();
                Int32 temp1 = (Int32)cmd1.ExecuteScalar();
                connnncamptrailer1.Close();
                if (temp1 > 0)
                {
                    //superLabel1.Text = "yeeeeessss superrrrrrrrrrr";
                    SqlConnection connnncamptrailer12 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                    SqlCommand cmd2 = new SqlCommand("insert into dbo.RecommendationForUsers (ru_user, ru_category, ru_img1, ru_img2, ru_img3, ru_img4, ru_img5, ru_img6, ru_img7, ru_img8, ru_agentName, ru_descr, ru_streetaddress, ru_city, ru_country, ru_noofrooms, ru_aream2, ru_price, ru_currency, ru_restatus, ru_ownername, ru_contactphone, ru_realestateid) select distinct ul.usernamee, category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, country, noofrooms, aream2, price, currency, restatus, ownername, contactphone, re.id from dbo.RealEstates re, dbo.UserLikes ul where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and ul.usernamee = @Username and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and re.id not in (select rfu.ru_realestateid from dbo.RecommendationForUsers rfu)", connnncamptrailer12);
                    cmd2.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                    cmd2.Parameters.AddWithValue("@Category", "camp trailer");
                    connnncamptrailer12.Open();
                    cmd2.ExecuteScalar();
                    connnncamptrailer12.Close();
                }
            }
        }

        protected void givemebungalows()
        {
            //bungalow
            SqlConnection connnnbungalow1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            //query za proverka kolku postovi od tip BUNGALOW userot ima lajknato
            SqlCommand cmddd1 = new SqlCommand("select count(*) from dbo.UserLikes ul, dbo.RealEstates re where ul.usernamee = @Username and ul.realestateid = re.id and re.category = @Category", connnnbungalow1);
            cmddd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmddd1.Parameters.AddWithValue("@Category", "bungalow");
            connnnbungalow1.Open();
            Int32 temppp1 = (Int32)cmddd1.ExecuteScalar();
            connnnbungalow1.Close();
            if (temppp1 >= 3)
            {
                //ako e 3 znaci ima osnov za preporaka na odredena kategorija - apartments.
                SqlConnection connnnbungalow12 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                //prvo query - za proverka dali postojat novi NElajknati postovi
                SqlCommand cmd1 = new SqlCommand("select count(*) from dbo.RealEstates re where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category)", connnnbungalow12);
                cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                cmd1.Parameters.AddWithValue("@Category", "bungalow");
                connnnbungalow12.Open();
                Int32 temp1 = (Int32)cmd1.ExecuteScalar();
                connnnbungalow12.Close();
                if (temp1 > 0)
                {
                    //superLabel1.Text = "yeeeeessss superrrrrrrrrrr";
                    SqlConnection connnnbungalow122 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                    SqlCommand cmd2 = new SqlCommand("insert into dbo.RecommendationForUsers (ru_user, ru_category, ru_img1, ru_img2, ru_img3, ru_img4, ru_img5, ru_img6, ru_img7, ru_img8, ru_agentName, ru_descr, ru_streetaddress, ru_city, ru_country, ru_noofrooms, ru_aream2, ru_price, ru_currency, ru_restatus, ru_ownername, ru_contactphone, ru_realestateid) select distinct ul.usernamee, category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, country, noofrooms, aream2, price, currency, restatus, ownername, contactphone, re.id from dbo.RealEstates re, dbo.UserLikes ul where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and ul.usernamee = @Username and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and re.id not in (select rfu.ru_realestateid from dbo.RecommendationForUsers rfu)", connnnbungalow122);
                    cmd2.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                    cmd2.Parameters.AddWithValue("@Category", "bungalow");
                    connnnbungalow122.Open();
                    cmd2.ExecuteScalar();
                    connnnbungalow122.Close();
                }
            }
        }

        protected void givemeoffices()
        {
            //Office
            SqlConnection connnnoffice12 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            //query za proverka kolku postovi od tip OFFICE userot ima lajknato
            SqlCommand cmddd12 = new SqlCommand("select count(*) from dbo.UserLikes ul, dbo.RealEstates re where ul.usernamee = @Username and ul.realestateid = re.id and re.category = @Category", connnnoffice12);
            cmddd12.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmddd12.Parameters.AddWithValue("@Category", "Office");
            connnnoffice12.Open();
            Int32 temppp12 = (Int32)cmddd12.ExecuteScalar();
            connnnoffice12.Close();
            if (temppp12 >= 3)
            {
                //ako e 3 znaci ima osnov za preporaka na odredena kategorija - apartments.
                SqlConnection connnnoffice123 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                //prvo query - za proverka dali postojat novi NElajknati postovi
                SqlCommand cmd1 = new SqlCommand("select count(*) from dbo.RealEstates re where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category)", connnnoffice123);
                cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                cmd1.Parameters.AddWithValue("@Category", "Office");
                connnnoffice123.Open();
                Int32 temp1 = (Int32)cmd1.ExecuteScalar();
                connnnoffice123.Close();
                if (temp1 > 0)
                {
                    //superLabel1.Text = "yeeeeessss superrrrrrrrrrr";
                    SqlConnection connnnoffice1233 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                    SqlCommand cmd2 = new SqlCommand("insert into dbo.RecommendationForUsers (ru_user, ru_category, ru_img1, ru_img2, ru_img3, ru_img4, ru_img5, ru_img6, ru_img7, ru_img8, ru_agentName, ru_descr, ru_streetaddress, ru_city, ru_country, ru_noofrooms, ru_aream2, ru_price, ru_currency, ru_restatus, ru_ownername, ru_contactphone, ru_realestateid) select distinct ul.usernamee, category, img1, img2, img3, img4, img5, img6, img7, img8, agentName, descr, streetaddress, city, country, noofrooms, aream2, price, currency, restatus, ownername, contactphone, re.id from dbo.RealEstates re, dbo.UserLikes ul where re.id not in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category and ul.usernamee = @Username and city in (select re.city from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price >= (select min(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and price <= (select max(re.price) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 >= (select min(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and aream2 <= (select max(re.aream2) from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and restatus in (select re.restatus from dbo.RealEstates re where re.id in (select ull.realestateid from dbo.UserLikes ull where ull.usernamee = @Username) and re.category = @Category) and re.id not in (select rfu.ru_realestateid from dbo.RecommendationForUsers rfu)", connnnoffice1233);
                    cmd2.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
                    cmd2.Parameters.AddWithValue("@Category", "Office");
                    connnnoffice1233.Open();
                    cmd2.ExecuteScalar();
                    connnnoffice1233.Close();
                }
            }
        }

        protected void notinterestedforthispostanymore_click(object sender, EventArgs e)
        {
            var NotinterestedanymoreLinkButton = (LinkButton)sender;
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.RecommendationForUsers where ru_id = @ru_id", conn);
            cmd1.Parameters.AddWithValue("@ru_id", NotinterestedanymoreLinkButton.CommandArgument);
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void noapartments_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.UserLikes where realestateid in (select re.id from dbo.RealEstates re where re.category = @Category) and usernamee = @Username", conn);
            cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd1.Parameters.AddWithValue("@Category", "apartment");
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void nohouses_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.UserLikes where realestateid in (select re.id from dbo.RealEstates re where re.category = @Category) and usernamee = @Username", conn);
            cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd1.Parameters.AddWithValue("@Category", "house");
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void nooffices_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.UserLikes where realestateid in (select re.id from dbo.RealEstates re where re.category = @Category) and usernamee = @Username", conn);
            cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd1.Parameters.AddWithValue("@Category", "Office");
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void nocamptrailers_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.UserLikes where realestateid in (select re.id from dbo.RealEstates re where re.category = @Category) and usernamee = @Username", conn);
            cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd1.Parameters.AddWithValue("@Category", "camp trailer");
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void nobungalows_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("delete from dbo.UserLikes where realestateid in (select re.id from dbo.RealEstates re where re.category = @Category) and usernamee = @Username", conn);
            cmd1.Parameters.AddWithValue("@Username", Session["NameOfUser"].ToString());
            cmd1.Parameters.AddWithValue("@Category", "bungalow");
            conn.Open();
            cmd1.ExecuteScalar();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void GiveMeMoreSpecificPosts_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void CityyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //FillCategoryDDL();
            //tempLabel.Text = CityyDropDownList.SelectedValue.ToString();
            //SqlDataSource4.SelectParameters.Clear();
            //SqlDataSource4.SelectParameters.Add("ru_userrr", Session["NameOfUser"].ToString());
            //SqlDataSource4.SelectParameters.Add("ru_cityy", CityyDropDownList.SelectedValue.ToString());
        }

        protected void LoadspecificsuggButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from dbo.RecommendationForUsers where ru_user = '" + publisherusernameTextBox.Text + "' and ru_city in (select TEMP.city from (select ru_city as city, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for sale' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_price >= (select TEMP.price from (select min(ru_price) as price, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for sale' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_price <= (select TEMP.avgprice from (select avg(ru_price) as avgprice, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for sale' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_aream2 >= (select TEMP.area from (select min(ru_aream2) as area, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for sale' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_aream2 <= (select TEMP.avgarea from (select avg(ru_aream2) as avgarea, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for sale' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) union select * from dbo.RecommendationForUsers where ru_user = '" + publisherusernameTextBox.Text + "' and ru_city in (select TEMP.city from (select ru_city as city, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for rent' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_price >= (select TEMP.price from (select min(ru_price) as price, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for rent' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_price <= (select TEMP.avgprice from (select avg(ru_price) as avgprice, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for rent' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_aream2 >= (select TEMP.area from (select min(ru_aream2) as area, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for rent' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) and ru_aream2 <= (select TEMP.avgarea from (select avg(ru_aream2) as avgarea, count(*) as total from dbo.RecommendationForUsers where ru_category = '" + CategoryyDropDownList.SelectedValue.ToString() + "' and ru_restatus = 'for rent' and ru_city = '" + CityyDropDownList.SelectedValue.ToString() + "' group by ru_city having count(*) > 1) AS TEMP) ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SpecificSuggRepeater2.DataSource = dt;
            SpecificSuggRepeater2.DataBind();
        }

        //protected void FillCategoryDDL()
        //{
        //    DataTable dt = new DataTable();
        //    SqlConnection connection = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
        //    connection.Open();
        //    string sqlStatement = "select distinct ru_category from dbo.RecommendationForUsers where ru_user = @ru_userrr and ru_city = @ru_categoryy";
        //    SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);
        //    sqlCmd.Parameters.AddWithValue("@ru_userrr", Session["NameOfUser"].ToString());
        //    sqlCmd.Parameters.AddWithValue("@ru_categoryy", CityyDropDownList.SelectedValue.ToString());
        //    SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
        //    sqlDa.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        CategoryyDropDownList.DataSource = dt;
        //        CategoryyDropDownList.DataTextField = "Category"; // the items to be displayed in the list items
        //        CategoryyDropDownList.DataValueField = "Category"; // the id of the items displayed;
        //        CategoryyDropDownList.DataBind();
        //    }
        //}
    }
}
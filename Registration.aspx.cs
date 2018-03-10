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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Page.IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True"].ConnectionString);
                int temp = 0;
                conn.Open();
                string checkuser = "select count(*) from UserRegistration where username = '" + UserNameTextBox.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                //Int32 temp = (Int32) com.ExecuteScalar();
                //Object temp = com.ExecuteScalar();
                //int temp = Convert.ToInt32(com.ExecuteScalar());
                //SqlDataReader reader = com.ExecuteReader();
                temp = (int)com.ExecuteScalar();
                if (!temp.Equals(DBNull.Value) temp > 0)
                {
                    //Response.Write("User already exists");
                    Label1.Text = temp.ToString();//("This username already exists");
                }
                else
                {
                    Label1.Text = ("Your data has been entered");
                }


                conn.Close();
            }*/


            /*if (Page.IsPostBack)
            {
                Label1.Text = ("your data has been entered");
            }*/

            /*if (Page.IsPostBack)
            {
                SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select count(*) from UserRegistration where username = @Username", conn);
                cmd.Parameters.AddWithValue("@Username", this.UserNameTextBox.Text);
                conn.Open();
                var temp = cmd.ExecuteScalar();
                conn.Close();
                if ((int)temp > 0)
                {
                    Label1.Text = temp.ToString();("This username already exists.");
                }
                else
                {
                    Label1.Text = ("Your registration has been successful");
                }
            }*/




            //SubmitRegistrationBtn.Enabled = false;
            AdminCodeLabel.Visible = false;
            AgentCodeLabel.Visible = false;
            AdminCodeTextBox.Visible = false;
            AgentCodeTextBox.Visible = false;
            //PasswordTextBox.Enabled = false;
            //StatusDropDownList.Enabled = false;
            //CheckUsernameButton.Enabled = false;
            if (StatusDropDownList.SelectedIndex == 1)
            {
                AdminCodeLabel.Visible = true;
                AdminCodeTextBox.Visible = true;
            }
            if (StatusDropDownList.SelectedIndex == 2)
            {
                AgentCodeLabel.Visible = true;
                AgentCodeTextBox.Visible = true;
            }
        }

        protected void SubmitRegistrationBtn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(UserNameTextBox.Text))
            {
                SqlConnection conn = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select count(*) from UserRegistration where username = @Username", conn);
                cmd.Parameters.AddWithValue("@Username", this.UserNameTextBox.Text);
                conn.Open();
                var temp = cmd.ExecuteScalar();
                conn.Close();
                if ((int)temp > 0)
                {
                    //Label1.Text = ("This username already exists.");
                    ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('The username already exists');window.location='Registration.aspx';</script>'");
                    AdminCodeLabel.Visible = false;
                    AgentCodeLabel.Visible = false;
                    AdminCodeTextBox.Visible = false;
                    AgentCodeTextBox.Visible = false;
                    AdminCodenotvalidLabel.Visible = false;
                    AgentCodenotvalidLabel.Visible = false;
                    RequiredFieldValidator3.Visible = false;
                    RequiredFieldValidator4.Visible = false;
                }
                else
                {
                    if (!(string.IsNullOrWhiteSpace(UserNameTextBox.Text)) && !(string.IsNullOrWhiteSpace(PasswordTextBox.Text)))
                    {
                        if (StatusDropDownList.SelectedIndex == 1)
                        {
                            if (System.Text.RegularExpressions.Regex.IsMatch(AdminCodeTextBox.Text, "^AD\\d{7}$"))
                            {
                                SqlConnection conn1 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                                string insertuser = "Insert into UserRegistration (username, passw, userstatus) Values(@username, @passw, @userstatus)";
                                SqlCommand com = new SqlCommand(insertuser, conn1);
                                //com.Parameters.AddWithValue("@userid", Int32.Parse(IdTextBox.Text));
                                com.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                                com.Parameters.AddWithValue("@passw", PasswordTextBox.Text);
                                com.Parameters.AddWithValue("@userstatus", StatusDropDownList.SelectedItem.ToString());

                                conn1.Open();
                                com.ExecuteNonQuery();
                                //Response.Write("Registration is successful");
                                conn1.Close();

                                if (IsPostBack)
                                {
                                    /*UserNameTextBox.Text = "";
                                    PasswordTextBox.Text = "";
                                    StatusDropDownList.SelectedIndex = 0;
                                    AgentCodeTextBox.Text = "";
                                    AdminCodeTextBox.Text = "";
                                    AdminCodeLabel.Visible = false;
                                    AgentCodeLabel.Visible = false;
                                    AdminCodeTextBox.Visible = false;
                                    AgentCodeTextBox.Visible = false;
                                    RequiredFieldValidator4.Visible = false;
                                    AdminCodenotvalidLabel.Visible = false;*/
                                    //Response.Redirect(Request.RawUrl);
                                    //Page.Response.Redirect(/*Page.Request.Url.ToString(), true*/"Home.aspx");
                                    //Response.Redirect("Home.aspx?msg=Hello User, You have successfully registered");
                                    //Response.Redirect("Home.aspx?label=" + "Successful registration", true); 
                                    /*Session["label"] = "Successful registration";
                                    Response.Redirect("Home.aspx");*/
                                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                                    //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration successfull');window.location.href='Home.aspx';", true);
                                    AdminCodenotvalidLabel.Visible = false;
                                    AgentCodenotvalidLabel.Visible = false;
                                    RequiredFieldValidator3.Visible = false;
                                    RequiredFieldValidator4.Visible = false;
                                    ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Registration successful!');window.location='Home.aspx';</script>'");
                                }
                            }
                            else
                            {
                                if (!string.IsNullOrWhiteSpace(AdminCodeTextBox.Text))
                                {
                                    AdminCodenotvalidLabel.Text = ("Your admin code is not valid.");
                                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "script", "window.setTimeout(function() { document.getElementById('" + AdminCodenotvalidLabel.ClientID + "').style.display = 'none' },2000);", true);
                                    PasswordTextBox.Enabled = true;
                                    StatusDropDownList.Enabled = true;
                                    AdminCodeLabel.Visible = true;
                                    AdminCodeTextBox.Visible = true;
                                    AdminCodeTextBox.Text = "";
                                    SubmitRegistrationBtn.Enabled = true;
                                    RequiredFieldValidator4.Visible = false;
                                }
                            }
                        }
                        else if (StatusDropDownList.SelectedIndex == 2)
                        {
                            if (System.Text.RegularExpressions.Regex.IsMatch(AgentCodeTextBox.Text, "^AG\\d{7}$"))
                            {
                                SqlConnection conn2 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                                string insertuser = "Insert into UserRegistration (username, passw, userstatus) Values(@username, @passw, @userstatus)";
                                SqlCommand com = new SqlCommand(insertuser, conn2);
                                //com.Parameters.AddWithValue("@userid", Int32.Parse(IdTextBox.Text));
                                com.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                                com.Parameters.AddWithValue("@passw", PasswordTextBox.Text);
                                com.Parameters.AddWithValue("@userstatus", StatusDropDownList.SelectedItem.ToString());

                                conn2.Open();
                                com.ExecuteNonQuery();
                                //Response.Write("Registration is successful");
                                conn2.Close();

                                if (IsPostBack)
                                {
                                    /*Label1.Text = ("Registration successful.");
                                    UserNameTextBox.Text = "";
                                    PasswordTextBox.Text = "";
                                    StatusDropDownList.SelectedIndex = 0;
                                    AgentCodeTextBox.Text = "";
                                    AdminCodeTextBox.Text = "";
                                    AdminCodeLabel.Visible = false;
                                    AgentCodeLabel.Visible = false;
                                    AdminCodeTextBox.Visible = false;
                                    AgentCodeTextBox.Visible = false;
                                    RequiredFieldValidator3.Visible = false;
                                    AgentCodenotvalidLabel.Visible = false;*/
                                    //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration successfull');window.location.href='Home.aspx';", true);
                                    AdminCodenotvalidLabel.Visible = false;
                                    AgentCodenotvalidLabel.Visible = false;
                                    RequiredFieldValidator3.Visible = false;
                                    RequiredFieldValidator4.Visible = false;
                                    ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Registration successful!');window.location='Home.aspx';</script>'");
                                }
                            }
                            else
                            {
                                if (!string.IsNullOrWhiteSpace(AgentCodeTextBox.Text))
                                {
                                    AgentCodenotvalidLabel.Text = ("Your agent code is not valid.");
                                    ScriptManager.RegisterClientScriptBlock(this.Page, typeof(Page), "script", "window.setTimeout(function() { document.getElementById('" + AgentCodenotvalidLabel.ClientID + "').style.display = 'none' },2000);", true);
                                    PasswordTextBox.Enabled = true;
                                    StatusDropDownList.Enabled = true;
                                    AgentCodeLabel.Visible = true;
                                    AgentCodeTextBox.Visible = true;
                                    AgentCodeTextBox.Text = "";
                                    SubmitRegistrationBtn.Enabled = true;
                                    RequiredFieldValidator3.Visible = false;
                                }
                            }
                        }
                        else
                        {
                            SqlConnection conn3 = new SqlConnection("Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True");
                            string insertuser = "Insert into UserRegistration (username, passw, userstatus) Values(@username, @passw, @userstatus)";
                            SqlCommand com = new SqlCommand(insertuser, conn3);
                            //com.Parameters.AddWithValue("@userid", Int32.Parse(IdTextBox.Text));
                            com.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                            com.Parameters.AddWithValue("@passw", PasswordTextBox.Text);
                            com.Parameters.AddWithValue("@userstatus", StatusDropDownList.SelectedItem.ToString());

                            conn3.Open();
                            com.ExecuteNonQuery();
                            //Response.Write("Registration is successful");
                            conn3.Close();

                            if (IsPostBack)
                            {
                                /*Label1.Text = ("Registration successful.");
                                UserNameTextBox.Text = "";
                                PasswordTextBox.Text = "";
                                StatusDropDownList.SelectedIndex = 0;
                                AdminCodeLabel.Visible = false;
                                AgentCodeLabel.Visible = false;
                                AdminCodeTextBox.Visible = false;
                                AgentCodeTextBox.Visible = false;
                                RequiredFieldValidator3.Visible = false;
                                RequiredFieldValidator4.Visible = false;*/
                                AdminCodenotvalidLabel.Visible = false;
                                AgentCodenotvalidLabel.Visible = false;
                                RequiredFieldValidator3.Visible = false;
                                RequiredFieldValidator4.Visible = false;
                                //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration successfull');window.location.href='Home.aspx';", true);
                                ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Registration successful!');window.location='Home.aspx';</script>'");
                            }
                        }
                    }
                    else
                    {
                        //Label1.Text = ("Please complete all the required fields.");
                        //UserNameTextBox.Enabled = true;
                        //PasswordTextBox.Enabled = true;
                        //StatusDropDownList.Enabled = true;
                        //SubmitRegistrationBtn.Enabled = true;
                        if (StatusDropDownList.SelectedIndex == 1)
                        {
                            AdminCodeLabel.Visible = true;
                            AdminCodeTextBox.Visible = true;
                        }
                        if (StatusDropDownList.SelectedIndex == 2)
                        {
                            AgentCodeLabel.Visible = true;
                            AgentCodeTextBox.Visible = true;
                        }
                    }
                }
            }

            /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=TAMARA-PC;Initial Catalog=RealEstate;Integrated Security=True"].ConnectionString);
            conn.Open();
            if (conn.State == System.Data.ConnectionState.Open)
            {
                string q = "insert into UserRegistration (username, passw, userstatus) values('" + UserNameTextBox.Text.ToString() + "', '" + PasswordTextBox.Text.ToString() + "', '" + StatusDropDownList.SelectedItem.ToString() + "')";
                SqlCommand com = new SqlCommand(q, conn);
                com.ExecuteNonQuery();
                Response.Write("Registration is successful");
            }
            conn.Close();*/
        }

        protected void StatusDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (StatusDropDownList.SelectedIndex == 1)
            {
                AdminCodeLabel.Visible = true;
                AdminCodeTextBox.Visible = true;
                AdminCodeTextBox.Text = "";
                /*PasswordTextBox.Enabled = true;
                StatusDropDownList.Enabled = true;
                SubmitRegistrationBtn.Enabled = true;*/
            }
            if (StatusDropDownList.SelectedIndex == 2)
            {
                AgentCodeLabel.Visible = true;
                AgentCodeTextBox.Visible = true;
                AgentCodeTextBox.Text = "";
                /*PasswordTextBox.Enabled = true;
                StatusDropDownList.Enabled = true;
                SubmitRegistrationBtn.Enabled = true;*/
            }
            if (StatusDropDownList.SelectedIndex == 0)
            {
                AdminCodeLabel.Visible = false;
                AgentCodeLabel.Visible = false;
                AdminCodeTextBox.Visible = false;
                AgentCodeTextBox.Visible = false;
                /*PasswordTextBox.Enabled = true;
                StatusDropDownList.Enabled = true;
                SubmitRegistrationBtn.Enabled = true;*/
            }
        }

        protected void UserNameTextBox_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void GetbackhomefromregformButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        /*protected void GetbackhomefromregformButtonClick(object sender, EventArgs e)
        {
            
        }*/
    }
}
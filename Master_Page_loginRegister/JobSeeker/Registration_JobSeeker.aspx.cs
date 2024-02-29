using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Master_Page_loginRegister.JobSeeker
{
   
    public partial class Registration_JobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobgender();
                bindjobqualification();
                bindjobcountry();
                bindjobprofile();
                txtstate.Items.Insert(0, new ListItem("--Select--", "0"));
                txtstate.Enabled = false;
                txtcity.Enabled = false;
                tr_skills.Visible = false;


            }

            if (Request.QueryString["idd"] != null && Request.QueryString["idd"].ToString()!="")
            {
                if (!IsPostBack)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from tbljobseeker where js_id='" + Request.QueryString["idd"] + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();

                    txtname.Text = dt.Rows[0]["js_name"].ToString();
                    rblgender.SelectedValue = dt.Rows[0]["js_gender"].ToString();
                    txtemail.Text = dt.Rows[0]["js_email"].ToString();
                    txtpassword.Text = dt.Rows[0]["js_password"].ToString();
                    txtcountry.SelectedValue = dt.Rows[0]["js_country"].ToString();
                    txtprofile.SelectedValue = dt.Rows[0]["js_profile"].ToString();
                    txtquali.SelectedValue = dt.Rows[0]["js_qualifiction"].ToString();
                    bindState();
                    txtstate.SelectedValue = dt.Rows[0]["js_state"].ToString();
                    bindCity();
                    txtcity.SelectedValue = dt.Rows[0]["js_city"].ToString();
                    txtdate.Text = dt.Rows[0]["js_date"].ToString();
                    bindjobprofileSkill();
                    tr_skills.Visible = true;
                    string[] arr = dt.Rows[0]["js_profileskill"].ToString().Split(',');
                    for (int i = 0; i < checkskill.Items.Count; i++)
                    {
                        for (int j = 0; j < arr.Length; j++)
                        {
                            if (checkskill.Items[i].Text == arr[j])
                            {
                                checkskill.Items[i].Selected = true;
                            }
                        }
                    }



                    ViewState["img"] = dt.Rows[0]["js_image"].ToString();
                    ViewState["rsm"] = dt.Rows[0]["js_resume"].ToString();

                    btnregistration.Text = "Update";
                }
            }
        }

        public void bindjobgender()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobseekergender", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            rblgender.DataValueField = "g_id";
            rblgender.DataTextField = "g_name";
            rblgender.DataSource = dt;
            rblgender.DataBind();
        }





        public void bindjobqualification()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblqualification", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtquali.DataValueField = "q_id";
            txtquali.DataTextField = "q_name";
            txtquali.DataSource = dt;
            txtquali.DataBind();
            txtquali.Items.Insert(0, new ListItem("--Select--", "0"));

        }




        public void bindjobcountry()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcountry", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtcountry.DataValueField = "c_id";
            txtcountry.DataTextField = "c_name";
            txtcountry.DataSource = dt;
            txtcountry.DataBind();
            txtcountry.Items.Insert(0, new ListItem("--Select--", "0"));

        }

        public void bindState()
        {
            // SqlCommand cmd = new SqlCommand("select * from tblstate where c_id='" + txtcountry.SelectedValue + "'", con);
            SqlCommand cmd = new SqlCommand("bind_tblstates", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@s_name", txtcountry.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtstate.Enabled = true;
            txtstate.DataValueField = "s_id";
            txtstate.DataTextField = "s_name";
            txtstate.DataSource = dt;
            txtstate.DataBind();
            txtstate.Items.Insert(0, new ListItem("--Select--", "0"));
        }


        public void bindjobprofile()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofile", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtprofile.DataValueField = "jpr_id";
            txtprofile.DataTextField = "jpr_name";
            txtprofile.DataSource = dt;
            txtprofile.DataBind();
            txtprofile.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        public void bindjobprofileSkill()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofSkills where jpr_id='"+ txtprofile.SelectedValue+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            tr_skills.Visible = true;
            checkskill.DataValueField = "sk_id";
            checkskill.DataTextField = "sk_name";
            checkskill.DataSource = dt;
            checkskill.DataBind();

        }


        public void bindCity()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcity where s_id='" + txtstate.SelectedValue + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtcity.Enabled = true;
            tr_skills.Visible = true;
            txtcity.DataValueField = "sc_id";
            txtcity.DataTextField = "sc_name";
            txtcity.DataSource = dt;
            txtcity.DataBind();
            txtcity.Items.Insert(0, new ListItem("--Select--", "0"));


        }

        protected void btnregistration_Click(object sender, EventArgs e)
        {
            if (btnregistration.Text == "Register")
            {

                string an = "";                                                              // for checkbox
                for (int i = 0; i < checkskill.Items.Count; i++)
                {
                    if (checkskill.Items[i].Selected == true)
                    {
                        an += checkskill.Items[i].Text + ",";
                    }
                }
                an = an.TrimEnd(',');



                //  for image
                // string imageName = Path.GetFileName(fileregister.PostedFile.FileName);
                // Ticks convert time into integer and we can upload many images of same type by using DateTime.Now.Ticks.ToString()
                string imageName = DateTime.Now.Ticks.ToString()+Path.GetFileName(fileregister.PostedFile.FileName);


                fileregister.SaveAs(Server.MapPath("JobSeeker_Image" + "\\" + imageName));



                //    for resume
                // string ResumeName = Path.GetFileName(resumefile.PostedFile.FileName);
                   string ResumeName = DateTime.Now.Ticks.ToString() + Path.GetFileName(resumefile.PostedFile.FileName);

                resumefile.SaveAs(Server.MapPath("JobSeeker_Resume" + "\\" + ResumeName));


                con.Open();
                SqlCommand cmd = new SqlCommand("proc_jobseeker_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@js_name", txtname.Text);
                cmd.Parameters.AddWithValue("@js_date", txtdate.Text);
                cmd.Parameters.AddWithValue("@js_gender", rblgender.SelectedValue);
                cmd.Parameters.AddWithValue("@js_qualifiction", txtquali.SelectedValue);
                cmd.Parameters.AddWithValue("@js_profile", txtprofile.SelectedValue);
                cmd.Parameters.AddWithValue("@js_profileskill", an);
                cmd.Parameters.AddWithValue("@js_country", txtcountry.SelectedValue);
                cmd.Parameters.AddWithValue("@js_state", txtstate.SelectedValue);
                cmd.Parameters.AddWithValue("@js_city", txtcity.SelectedValue);
                cmd.Parameters.AddWithValue("@js_email", txtemail.Text);
                cmd.Parameters.AddWithValue("@js_password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@js_image", imageName);
                cmd.Parameters.AddWithValue("@js_resume", ResumeName);


                cmd.ExecuteNonQuery();
                con.Close();

                lblmsg.Text = "You have successfully register";

            }

            else if (btnregistration.Text == "Update")
            {

                
                    string an = "";                                                              // for checkbox
                    for (int i = 0; i < checkskill.Items.Count; i++)
                    {
                        if (checkskill.Items[i].Selected == true)
                        {
                            an += checkskill.Items[i].Text + ",";
                        }
                    }
                    an = an.TrimEnd(',');


                    //  for image
                    string imageName = Path.GetFileName(fileregister.PostedFile.FileName);
                if (imageName != "")
                {
                    imageName = DateTime.Now.Ticks.ToString() + imageName;
                    fileregister.SaveAs(Server.MapPath("JobSeeker_Image" + "\\" + imageName));
                    File.Delete(Server.MapPath("JobSeeker_Image" + "\\" + "\\" + ViewState["img"]));
                }


                    //    for resume
                    string ResumeName = Path.GetFileName(resumefile.PostedFile.FileName);
                if (ResumeName != "")
                {
                    ResumeName = DateTime.Now.Ticks.ToString() + ResumeName;
                    resumefile.SaveAs(Server.MapPath("JobSeeker_Resume" + "\\" + ResumeName));
                    File.Delete(Server.MapPath("JobSeeker_Resume" + "\\" + ViewState["rsm"]));
                }
                    con.Open();
                    SqlCommand cmd = new SqlCommand("proc_jobseeker_update", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@js_id", Request.QueryString["idd"]);
                    cmd.Parameters.AddWithValue("@js_name", txtname.Text);
                    cmd.Parameters.AddWithValue("@js_date", txtdate.Text);
                    cmd.Parameters.AddWithValue("@js_gender", rblgender.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_qualifiction", txtquali.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_profile", txtprofile.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_profileskill", an);
                    cmd.Parameters.AddWithValue("@js_country", txtcountry.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_state", txtstate.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_city", txtcity.SelectedValue);
                    cmd.Parameters.AddWithValue("@js_email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@js_password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@js_image", imageName=="" ? ViewState["img"]: imageName);
                    cmd.Parameters.AddWithValue("@js_resume", ResumeName=="" ? ViewState["rsm"]: ResumeName);


                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            

        }

      
        protected void txtcountry_SelectedIndexChanged1(object sender, EventArgs e)
        {
            bindState();

        }

        protected void txtprofile_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindjobprofileSkill();

        }

        protected void txtstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindCity();
        }
    }
    }


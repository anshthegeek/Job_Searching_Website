using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Master_Page_loginRegister
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnregister_Click(object sender, EventArgs e)
        {

            if (ddlusertype.SelectedValue == "1")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblAdmin where admin_email='" + txtemail.Text + "' and admin_password='" + txtpassword.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0)
                {
                    Session["JADMIN"] = dt.Rows[0]["admin_id"];
                    Response.Redirect("ADMIN/HomeAdmin.aspx");
                }
                else
                {

                    lblmsg.Text = "Login Failed";
                }
            }
            else if (ddlusertype.SelectedValue == "2")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbljobseeker where js_email='" + txtemail.Text + "' and js_password='" + txtpassword.Text + "' and status=0", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0)
                {
                    Session["JSID"] = dt.Rows[0]["js_id"];
                    Response.Redirect("JobSeeker/HomJobSeeker.aspx");
                }
                else
                {

                    lblmsg.Text = "Login Failed";
                }


            }
            else if (ddlusertype.SelectedValue == "3")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbljobrecruiters where jr_email='" + txtemail.Text + "' and jr_password='" + txtpassword.Text + "' and status=0", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0)
                {
                    Session["JRID"] = dt.Rows[0]["jr_id"];
                    Response.Redirect("JobRecuritor/HomeJobRecruiter.aspx");
                }
                else
                {

                    lblmsg.Text = "Login Failed";
                }
            }

        }
    }
}
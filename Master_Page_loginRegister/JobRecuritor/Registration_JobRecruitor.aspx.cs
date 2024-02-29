using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace Master_Page_loginRegister.JobRecuritor
{
    public partial class Registration_JobRecruitor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobcountry();
                txtstate.Enabled = false;
                txtcity.Enabled = false;

            }
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

        public void bindjobcity()
        {


              SqlCommand cmd = new SqlCommand("select * from tblcity where s_id='" + txtstate.SelectedValue + "'", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtcity.Enabled = true;
            txtcity.DataValueField = "sc_id";
            txtcity.DataTextField = "sc_name";
            txtcity.DataSource = dt;
            txtcity.DataBind();
            txtcity.Items.Insert(0, new ListItem("--Select--", "0"));

        }




        protected void btnregistration_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_jobrecruiters_inserts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jr_name", txtname.Text);
            cmd.Parameters.AddWithValue("@jr_url", txturl.Text);
            cmd.Parameters.AddWithValue("@jr_country", txtcountry.SelectedValue);
            cmd.Parameters.AddWithValue("@jr_state",txtstate.SelectedValue);
            cmd.Parameters.AddWithValue("@jr_city",txtcity.SelectedValue);
            cmd.Parameters.AddWithValue("@jr_email", txtemail.Text);
            cmd.Parameters.AddWithValue("@jr_password", txtpassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void txtstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindjobcity();
        }

        protected void txtcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindState();        }
    }
}
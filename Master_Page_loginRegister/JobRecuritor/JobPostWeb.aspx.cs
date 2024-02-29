using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace Master_Page_loginRegister.JobRecuritor
{
    public partial class JobPostWeb : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobprofile();
                bindjobLocation();
            }

        }

        public void clear()
        {
            txtmaxexp.Text = "";
            txtminexp.Text = "";
            txtmaxsalary.Text = "";
            txtminsalary.Text = "";
            txtnoofvacancy.Text = "";
            txtcomments.Text = "";
        }

        public void bindjobprofile()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofile", con); 
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtjobprofile.DataValueField = "jpr_id";
            txtjobprofile.DataTextField = "jpr_name";
            txtjobprofile.DataSource = dt;
            txtjobprofile.DataBind();
            txtjobprofile.Items.Insert(0, new ListItem("--Select--","0"));

        }


        public void bindjobLocation()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from joblocation", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            txtloc.DataValueField = "loc_id";
            txtloc.DataTextField = "loc_name";
            txtloc.DataSource = dt;
            txtloc.DataBind();
            txtloc.Items.Insert(0, new ListItem("--Select--", "0"));

        }    

        protected void btnjobpost_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("jobpost_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jr_id", Session["JRID"]);
            cmd.Parameters.AddWithValue("@jpr_id", txtjobprofile.SelectedValue);
            cmd.Parameters.AddWithValue("@minexp", txtminexp.Text);
            cmd.Parameters.AddWithValue("@maxexp", txtmaxexp.Text);
            cmd.Parameters.AddWithValue("@minsalary", txtminsalary.Text);
            cmd.Parameters.AddWithValue("@maxsalary", txtmaxsalary.Text);
            cmd.Parameters.AddWithValue("@loc_id", txtloc.SelectedValue);
            cmd.Parameters.AddWithValue("@noofvacancy", txtnoofvacancy.Text);
            cmd.Parameters.AddWithValue("@comments", txtcomments.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            clear();
        }
    }
}
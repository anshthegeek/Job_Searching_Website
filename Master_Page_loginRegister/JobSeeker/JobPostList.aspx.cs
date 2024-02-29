using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Master_Page_loginRegister.JobSeeker
{
    public partial class JobPostList : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");
 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listjob();
                bindjobLocation();
                bindjobprofile();
            }
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


        public void listjob()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiters on tbljobrecruiters.jr_id=tbljobpost.jr_id join jobprofile on jobprofile.jpr_id=tbljobpost.jpr_id join joblocation on joblocation.loc_id=tbljobpost.loc_id where tbljobpost.status=0", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();        
            gvjobpost.DataSource = dt;
            gvjobpost.DataBind();

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
            txtjobprofile.Items.Insert(0, new ListItem("--Select--", "0"));

        }

        protected void gvjobpost_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiters on tbljobrecruiters.jr_id=tbljobpost.jr_id join jobprofile on jobprofile.jpr_id=tbljobpost.jpr_id join joblocation on joblocation.loc_id=tbljobpost.loc_id where tbljobpost.status=0 and tbljobpost.loc_id='"+txtloc.SelectedValue+"' and tbljobpost.jpr_id='"+txtjobprofile.SelectedValue+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvjobpost.DataSource = dt;
            gvjobpost.DataBind();

        }

        
    }
}
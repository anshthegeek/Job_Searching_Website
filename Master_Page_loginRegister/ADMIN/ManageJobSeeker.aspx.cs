using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Master_Page_loginRegister.ADMIN
{
    public partial class ManageJobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindJobSeekerAdmin();

            }
        }

        public void BindJobSeekerAdmin()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobseeker join jobseekergender on js_gender=g_id join tblqualification on js_qualifiction=q_id join jobprofile on js_profile=jpr_id join tblcountry on js_country=c_id join tblstate on js_state=s_id join tblcity on js_city=sc_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvseeker.DataSource = dt;
            gvseeker.DataBind();
        }

        protected void gvseeker_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("jobseeker_status_change", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@js_id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                BindJobSeekerAdmin();
            }
            else if (e.CommandName == "R")
            {
                Response.Redirect("../JobSeeker\\JobSeeker_Resume\\" + e.CommandArgument);
            }
            {

            }

        }
    }
}
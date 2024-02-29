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
    public partial class manageJobbPost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                managelistjob();
            }
        }

        public void managelistjob()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiters on tbljobrecruiters.jr_id=tbljobpost.jr_id join jobprofile on jobprofile.jpr_id=tbljobpost.jpr_id join joblocation on joblocation.loc_id=tbljobpost.loc_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvjobpost.DataSource = dt;
            gvjobpost.DataBind();

        }

        

        protected void gvjobpost_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "B")
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("jobpost_status_changes", con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@jp_id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                managelistjob();
            }

        }
    }
}
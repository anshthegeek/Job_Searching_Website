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
    public partial class ManageJobRecuiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobRecruiterAdmin();
            }

        }


        public void BindJobRecruiterAdmin()
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobrecruiters", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gvrecruiter.DataSource = dt;
            gvrecruiter.DataBind();
        }
        



        protected void gvrecruiter_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            

                con.Open();
                SqlCommand cmd = new SqlCommand("jobrecruiter_status_change", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@jr_id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                BindJobRecruiterAdmin();
            
        }
    }
}
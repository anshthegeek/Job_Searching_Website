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
    public partial class ManageJobprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobpro();
            }
        }

        public void bindjobpro()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofile", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvmanagepro.DataSource = dt;
            gvmanagepro.DataBind();
        }
        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into jobprofile(jpr_name)values('" + managepro.Text + "')", con);
            cmd.ExecuteNonQuery();
             con.Close();
            bindjobpro();
        }

        protected void gvmanagepro_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from jobprofile  where jpr_id='" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobpro();
        }
    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Master_Page_loginRegister.ADMIN
{
    public partial class ManageSKills : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobprofile();
            }
        }


        public void bindjobprofile()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofile", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            manageprof.DataValueField = "jpr_id";
            manageprof.DataTextField = "jpr_name";
            manageprof.DataSource = dt;
            manageprof.DataBind();
            manageprof.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        public void bindjobskills()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from jobprofSkills join jobprofile on jobprofSkills.jpr_id=jobprofile.jpr_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvmanageskills.DataSource = dt;
            gvmanageskills.DataBind();


        }


        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into jobprofskills (jpr_id,sk_name)values('" + manageprof.SelectedValue + "','" + manageskills.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobskills();
        }

        protected void gvmanageskills_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from jobprofskills where sk_id='" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobskills();
        }
    }
}
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
    public partial class manageState : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindcountry();
                bindstate();

            }

        }

        public void bindcountry()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcountry", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            managecountry.DataValueField = "c_id";
            managecountry.DataTextField = "c_name";
            managecountry.DataSource = dt;
            managecountry.DataBind();
            managecountry.Items.Insert(0, new ListItem("--Select--", "0"));

        }



        public void bindstate()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblstate join tblcountry on tblstate.c_id=tblcountry.c_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvmanagestate.DataSource = dt;
            gvmanagestate.DataBind();


        }
        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblstate(c_id,s_name)values('" + managecountry.SelectedValue + "','" + managestate.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindstate();

        }

        protected void gvmanagestate_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tblstate  where s_id='" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindstate();
        }
    }
}
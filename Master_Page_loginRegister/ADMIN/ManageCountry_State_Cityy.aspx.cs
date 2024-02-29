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
using System.Xml.Linq;

namespace Master_Page_loginRegister.ADMIN
{
    public partial class ManageCountry_State_Cityy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindcountry();
                bindcity();
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



        public void bindState()
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(" select * from tblstate where c_id='"+managecountry.SelectedValue+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            managestate.DataValueField = "s_id";
            managestate.DataTextField = "s_name";
            managestate.DataSource = dt;
            managestate.DataBind();
            managestate.Items.Insert(0, new ListItem("--Select--", "0"));


        }


        public void bindcity()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcity join tblstate on tblcity.s_id=tblstate.s_id join tblcountry on tblstate.c_id=tblcountry.c_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvmanagecity.DataSource = dt;
            gvmanagecity.DataBind();


        }






        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblcity(s_id,sc_name)values('" + managestate.SelectedValue + "','"+managecity.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindcity();
           


        }

        protected void gvmanagecity_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tblcity where sc_id='" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindcity();
        }

        protected void managecountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindState();
        }
    }
}
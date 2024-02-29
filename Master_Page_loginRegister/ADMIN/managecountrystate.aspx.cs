using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.NetworkInformation;

namespace Master_Page_loginRegister.ADMIN
{
    public partial class managecountrystate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindjobcountry();
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
            gvmanagecountry.DataSource = dt;
            gvmanagecountry.DataBind();
        }




       


        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblcountry(c_name)values('" + managecountry.Text +"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobcountry();
        }

        protected void gvmanagecountry_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tblcountry  where c_id='" + e.CommandArgument + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobcountry();
        }

       
    }
}
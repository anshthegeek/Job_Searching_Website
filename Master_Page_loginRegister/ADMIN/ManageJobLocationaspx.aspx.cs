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
    public partial class ManageJobLocationaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobloc();
            }
        }

        public void bindjobloc()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from joblocation", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvmanageloc.DataSource = dt;
            gvmanageloc.DataBind();
        }

        protected void btnnmanage_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into joblocation(loc_name)values('"+ manageloc.Text + "')", con);
            cmd.ExecuteNonQuery();
;            con.Close();
            bindjobloc();

        }

        protected void gvmanageloc_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from joblocation where loc_id='"+e.CommandArgument+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindjobloc();
        }
    }
}
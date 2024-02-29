using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Master_Page_loginRegister.ADMIN
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindAdmin();
            }
        }




        public void bindAdmin()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblAdmin where admin_id='" + Session["JADMIN"] + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            lblname.Text = dt.Rows[0]["admin_name"].ToString();
            lblgender.Text = dt.Rows[0]["admin_gender"].ToString() == "1" ? "male" : dt.Rows[0]["js_gender"].ToString() == "2" ? "female" : "other";
            lblemail.Text = dt.Rows[0]["admin_email"].ToString();
            lblpassword.Text = dt.Rows[0]["admin_password"].ToString();


        }



    }
}
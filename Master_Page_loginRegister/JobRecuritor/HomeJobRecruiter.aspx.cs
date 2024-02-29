using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Master_Page_loginRegister.JobRecuritor
{
    public partial class HomeJobRecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobrecruiter();
            }
        }



        public void bindjobrecruiter()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobrecruiters join tblcountry on jr_country=c_id join tblstate on jr_state=s_id join tblcity on jr_city=sc_id where jr_id='" + Session["JRID"] + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["jr_name"].ToString();
            lblurl.Text = dt.Rows[0]["jr_url"].ToString();
            lblcountry.Text = dt.Rows[0]["sc_name"].ToString() + " , " + dt.Rows[0]["s_name"].ToString() + " , " + dt.Rows[0]["c_name"].ToString();
            lblemail.Text = dt.Rows[0]["jr_email"].ToString();
            lblpassword.Text = dt.Rows[0]["jr_password"].ToString();
        }


    }
}
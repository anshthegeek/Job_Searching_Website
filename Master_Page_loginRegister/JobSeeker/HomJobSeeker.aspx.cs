using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Master_Page_loginRegister.JobSeeker
{
    public partial class HomJobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindjobseeker();
            }
        }

        public void bindjobseeker()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobseeker join jobseekergender on js_gender=g_id join tblqualification on js_qualifiction=q_id join jobprofile on js_profile=jpr_id join tblcountry on js_country=c_id join tblstate on js_state=s_id join tblcity on js_city=sc_id where js_id='" + Session["JSID"] +"'", con);
          //  cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@js_id", Session["JSID"]);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["js_name"].ToString();
            lbldob.Text = dt.Rows[0]["js_date"].ToString();
            lblgender.Text = dt.Rows[0]["js_gender"].ToString() == "1" ? "male" : dt.Rows[0]["js_gender"].ToString() == "2" ? "female" : "other";
            lblemail.Text = dt.Rows[0]["js_email"].ToString();
            lblpassword.Text = dt.Rows[0]["js_password"].ToString();
            lblquali.Text = dt.Rows[0]["q_name"].ToString();
            lblprofile.Text = dt.Rows[0]["jpr_name"].ToString();
            lblskill.Text = dt.Rows[0]["js_profileskill"].ToString();
            lblcountry.Text = dt.Rows[0]["sc_name"].ToString()+ " , " + dt.Rows[0]["s_name"].ToString()+  " , " + dt.Rows[0]["c_name"].ToString();
            imgseeker.ImageUrl = "../JobSeeker\\JobSeeker_Image\\" + dt.Rows[0]["js_image"].ToString();
            resumebtn.Text = dt.Rows[0]["js_resume"].ToString();
        }

        protected void resumebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../JobSeeker\\JobSeeker_Resume\\" + resumebtn.Text);

        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration_JobSeeker.aspx?idd=" + Session["JSID"]);
        }
    }
}
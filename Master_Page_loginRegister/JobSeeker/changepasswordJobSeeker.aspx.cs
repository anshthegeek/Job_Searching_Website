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
    public partial class changepasswordJobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

       

        protected void btnchange_Click2(object sender, EventArgs e)
        {
            if (txtnewpassword.Text == txtconfirm.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbljobseeker set js_password='" + txtnewpassword.Text + "' where js_id='" + Session["JSID"] + "' and js_password='" + txtcurrent.Text + "'", con);
                int i = cmd.ExecuteNonQuery();

                if (i == 0)
                {
                    lblmsg.Text = "your current password is not matched";
                }
                else
                {
                    lblmsg.Text = "your password has been changed successfully";

                }
            }
            else
            {
                lblmsg.Text = "password do not match";

            }
        }
    }
}
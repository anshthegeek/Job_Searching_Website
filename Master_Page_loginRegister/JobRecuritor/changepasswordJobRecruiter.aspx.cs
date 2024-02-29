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
    public partial class changepasswordJobRecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }   

        protected void btnchange_Click1(object sender, EventArgs e)
        {
            if (txtnewpassword.Text == txtconfirm.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbljobrecruiters set jr_password='" + txtnewpassword.Text + "' where jr_id='" + Session["JRID"] + "' and jr_password='" + txtcurrent.Text + "'", con);
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
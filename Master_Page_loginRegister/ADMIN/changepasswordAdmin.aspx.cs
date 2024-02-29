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
    public partial class changepasswordAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HAM5H2M\\SQLEXPRESS;initial catalog=ProjectJOBPORTAL;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchange_Click(object sender, EventArgs e)
        {

            /* ExecuteNonQuery() return positive integer value. If query is execute then it return positive integer value which is more than 0,
             but if query does not execute then it return 0 */

            if (txtnewpassword.Text == txtconfirm.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tblAdmin set admin_password='" + txtnewpassword.Text + "' where admin_id='" + Session["JADMIN"] + "' and admin_password='" + txtcurrent.Text + "'", con);
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
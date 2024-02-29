using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_Page_loginRegister.About_Contact
{
    public partial class AboutWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btlg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
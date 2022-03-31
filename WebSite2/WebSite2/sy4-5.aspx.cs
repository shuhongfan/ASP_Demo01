using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (username.Text!="" && pwd.Text!="")
        {
            Session["username"]=username.Text;
            Session["password"]=pwd.Text;

            Response.Redirect("sy4-5-2.aspx");
        }
    }
}
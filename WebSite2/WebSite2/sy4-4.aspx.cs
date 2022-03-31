using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["pwd"]!=null)
        {
            if (DateTime.Now.CompareTo(Request.Cookies["pwd"].Expires)>0)
            {
                pwd.Attributes["value"] = Request.Cookies["pwd"].Value;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            Response.Cookies["pwd"].Value = pwd.Text;
            Response.Cookies["pwd"].Expires=DateTime.Now.AddSeconds(10);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        pwd.Text = "";
        username.Text = "";
    }
}
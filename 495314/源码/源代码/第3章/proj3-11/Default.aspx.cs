using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["password"] != null)
        {
            if (DateTime.Now.CompareTo(Request.Cookies["password"].Expires) > 0)
            {
                TextBox2.Text = Request.Cookies["password"].Value;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            Response.Cookies["password"].Value = TextBox2.Text;
            Response.Cookies["password"].Expires = DateTime.Now.AddSeconds(10);
        }
    }
}
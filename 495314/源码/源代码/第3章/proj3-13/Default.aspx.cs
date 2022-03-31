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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" || TextBox2.Text != "")
        {
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Response.Redirect("Welcome.aspx");
        }
        else
            Response.Write("<script language='javascript'>alert('用户名或密码不能为空！');</script>");
    }
}
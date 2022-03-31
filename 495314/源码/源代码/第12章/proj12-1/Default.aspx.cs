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
        Label1.Text ="<a href='login.aspx'>登录</a>";
        Label2.Text = "<a href='register.aspx'>注册</a>";
        Label3.Text = "<a href='../admin/login.aspx'>管理员登录</a>";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Gbook.aspx?cid=" + DropDownList1.Text);
    }
}
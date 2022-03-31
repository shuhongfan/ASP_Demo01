using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = null;		//清除用户信息
        Session["userid"] = null;		//清除用户信息
        Session["admin"] = null;		//清除管理员信息
        Response.Redirect("Default.aspx");	//页面跳转
    }
}
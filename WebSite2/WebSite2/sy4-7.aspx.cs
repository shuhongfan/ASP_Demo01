using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (username.Text!=""&&pwd.Text!="")
        {
            Session["name"] = username.Text;
            Response.Redirect("sy4-7-2.aspx");
        }
        else
        {
            Response.Write("<script>alert('用户名密码不能为空')</script>");
        }
    }
}
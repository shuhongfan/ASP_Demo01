using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"]!=null && Session["password"]!=null )
        {
            string name = Session["username"].ToString();
            string pwd = Session["password"].ToString();
            Response.Write("欢迎"+name+"光临本站，请记住你的密码："+pwd);
        }
    }
}
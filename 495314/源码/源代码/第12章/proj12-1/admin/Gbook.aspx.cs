using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "<a href='" + "usermanage.aspx'>" + "用户管理</a>";
        Label2.Text = "<a href='" + "../logout.aspx'>" + "注销</a>";     
    }  
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_usermanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "<a href='" + "Gbook.aspx'>" + "留言管理</a>";
        Label2.Text = "<a href='" + "../logout.aspx'>" + "注销</a>";
    }
}
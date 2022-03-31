using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBClass db1 = new DBClass();
        string strsql = "delete from gbook where id='" + Request.QueryString["id"] + "'";
        db1.ExecuteSql(strsql);
        Response.Redirect("Gbook.aspx?cid=" + Request.QueryString["cid"] + "");      
    }
}
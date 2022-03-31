using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Server.MapPath("./"));
        Response.Write("<br/>"+Server.MapPath("~/sy4-3.aspx"));
    }
}
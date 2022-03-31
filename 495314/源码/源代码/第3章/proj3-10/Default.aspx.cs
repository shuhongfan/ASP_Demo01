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
        Response.Write(Server.HtmlEncode("<h3>三级标题</h3>"));
        Response.Write("<hr/>");
        Response.Write(Server.HtmlDecode(Server.HtmlEncode("<h3>三级标题</h3>")));
    }
}
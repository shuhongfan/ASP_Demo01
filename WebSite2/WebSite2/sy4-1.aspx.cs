using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int day = int.Parse(DateTime.Now.Day.ToString());
        string url;
        if (day%2==0)
        {
            url = "http://www.sina.com";
        }
        else
        {
            url = "http://www.sohu.com";
        }
        Response.Redirect(url);
    }
}
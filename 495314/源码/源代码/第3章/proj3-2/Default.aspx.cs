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
        Response.Write("<font size='6' color='red' face='黑体'>欢迎来到我的主页</font><br/><br/>"); 
        Response.Write("<hr width='75%' color='blue' align='left'/><br/><br/>");
        Response.Write("现在的时间是：" + DateTime.Now.ToLongTimeString() + "<br/><br/>");
        Response.Write("浏览新闻可以到<a href='http://www.sohu.com'>搜狐网</a> <br/><br/>");
        Response.Write("<script language='javascript'>alert('使用Write方法输出信息');</script>");
    }
}
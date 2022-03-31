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
        Response.Write("当前使用的浏览器信息：");
        Response.Write("<hr>");
        Response.Write("浏览器的名称及版本：" + Request.Browser.Type + "<br/>");
        Response.Write("浏览器的类型：" + Request.Browser.Browser + "<br/>");
        Response.Write("浏览器的版本号：" + Request.Browser.Version + "<br/>");
        Response.Write("客户端使用的操作系统：" + Request.Browser.Platform + "<br/>");
        Response.Write("是否支持HTML框架：" + Request.Browser.Frames + "<br/>");
        Response.Write("是否支持JavaScript：" + Request.Browser.JavaScript.ToString() + "<br/>");
        Response.Write("是否支持Cookies：" + Request.Browser.Cookies + "<br/>");
        Response.Write("是否支持ActiveX控件：" + Request.Browser.ActiveXControls + "<br/>");
        Response.Write("<hr>");
    }
}
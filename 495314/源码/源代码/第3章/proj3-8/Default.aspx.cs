using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("获取的服务器端信息：");
        Response.Write("<hr>");
        Response.Write("当前网页虚拟路径：" + Request.ServerVariables["URL"] + "<br/>");
        Response.Write("当前网页实际路径：" + Request.ServerVariables["PATH_TRANSLATED"] + "<br/>");
        Response.Write("服务器名：" + Request.ServerVariables["SERVER_NAME"] + "<br/>");
        Response.Write("软件：" + Request.ServerVariables["SERVER_SOFTWARE"] + "<br/>");
        Response.Write("服务器连接端口：" + Request.ServerVariables["SERVER_PORT"] + "<br/>");
        Response.Write("HTTP版本：" + Request.ServerVariables["SERVER_PROTOCOL"] + "<br/>");
        Response.Write("客户主机名：" + Request.ServerVariables["REMOTE_HOST"] + "<br/>");
        Response.Write("浏览器：" + Request.ServerVariables["HTTP_USER_AGENT"] + "<br/>");
        Response.Write("<hr>");
    }
}
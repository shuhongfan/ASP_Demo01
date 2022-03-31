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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserIP = Request.UserHostAddress.ToString();
        HttpCookie oldCookie = Request.Cookies["userIP"];
        if (oldCookie == null)
        {
            Response.Write("<script>alert('投票成功，谢谢您的参与！')</script>");
            //定义新的Cookie对象
            HttpCookie newCookie = new HttpCookie("userIP");
            newCookie.Expires = DateTime.Now.AddDays(1);
            //添加新的Cookie变量IPaddress，值为UserIP
            newCookie.Values.Add("IPaddress", UserIP);
            //将变量写入Cookie文件中
            Response.AppendCookie(newCookie);
            return;
        }
        else
        {
            string userIP = oldCookie.Values["IPaddress"];
            if (UserIP.Trim() == userIP.Trim())
            {
                Response.Write("<script>alert('一个IP地址一天内只能投一次票，谢谢您的参与！');history.go(-1);</script>");
                return;
            }
            else
            {
                HttpCookie newCookie = new HttpCookie("userIP");
                newCookie.Values.Add("IPaddress", UserIP);
                newCookie.Expires = DateTime.Now.AddDays(1);
                Response.AppendCookie(newCookie);          
                Response.Write("<script>alert('投票成功，谢谢您的参与！')</script>");
                return;
            }
        }
    }
}
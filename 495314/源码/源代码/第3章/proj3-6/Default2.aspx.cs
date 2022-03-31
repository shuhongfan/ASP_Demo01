using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //获取用户登录名
        Label1.Text = Request["UserName"];
        //将系统时间与数据13进行比较，来获取问候语
        int Time = DateTime.Now.Hour.CompareTo(13);
        string str;
        if (Time > 0)
        {
            str = "下午好！";
        }
        else if (Time < 0)
        {
            str = "上午好！";

        }
        else
        {
            str = "中午好！";

        }
        Label2.Text = str;
    }
}
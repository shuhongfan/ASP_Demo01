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
        if (IsValid)
            Label1.Text = "报名信息如下：<br/>" + "姓名：" + TextBox1.Text + "<br/>年龄：" + TextBox4.Text + "<br/>E-mail：" + TextBox5.Text;
    }
}
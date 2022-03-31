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
        localhost.WebService SendMsg = new localhost.WebService();
        SendMsg.SendMailMsg(this.TextBox1.Text.Trim(), this.TextBox2.Text.Trim(), this.TextBox3.Text.Trim(), this.TextBox4.Text.Trim(), this.TextBox5.Text, "smtp.qq.com", 25);
    }
}
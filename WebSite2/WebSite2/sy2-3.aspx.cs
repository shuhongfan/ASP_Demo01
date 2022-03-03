using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy2_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int digit, num = int.Parse(TextBox1.Text);
        if (num < 10)
        {
            Response.Write("<script>alert('您输入的整数至少要两位数,请重新输入!')</script>");
            TextBox1.Text = "";
        }
        while (num != 0)
        {
            digit = num % 10;
            num = num / 10;
            Label1.Text=Label1.Text+digit.ToString();
        }
    }
}
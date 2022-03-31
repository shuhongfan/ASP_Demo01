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
        localhost.WebService lm = new localhost.WebService();
        string code = DropDownList1.SelectedValue;
        int one = Convert.ToInt32(TextBox1.Text.Trim());
        int two = Convert.ToInt32(TextBox2.Text.Trim());
        if (code == "/" && two == 0)
            Response.Write("<script>alert('除数不能为0，请重新输入除数！');</script>");
        TextBox3.Text = lm.GetTotal(code, one, two).ToString();
    }
}
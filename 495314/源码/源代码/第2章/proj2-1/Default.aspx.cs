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
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        double n1 = double.Parse(TextBox1.Text);
        double n2 = double.Parse(TextBox2.Text);
        double result = 0;
        switch (e.CommandName)//获取按钮的CommandName值
        {
            case "Add": result = n1 + n2; Label1.Text = "+"; break;
            case "Subtract": result = n1 - n2; Label1.Text = "-"; break;
            case "Multiply": result = n1 * n2; Label1.Text = "×"; break;
            case "Divide": result = n1 / n2; Label1.Text = "÷"; break;
        }
        Label2.Text = result.ToString();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Command(object sender, CommandEventArgs e)
    {
        double n1 = double.Parse(num1.Text);
        double n2 = double.Parse(num2.Text);
        switch (e.CommandName)
        {
            case "plus":
                resultLabel.Text = (n1+n2).ToString();
                computLabel.Text = "+";
                break;
            case "subtract":
                resultLabel.Text = (n1 - n2).ToString();
                computLabel.Text = "-";
                break;
            case "multiply":
                resultLabel.Text = (n1 * n2).ToString();
                computLabel.Text = "*";
                break;
            case "divide":
                resultLabel.Text = (n1 / n2).ToString();
                computLabel.Text = "/";
                break;
        }
    }
}
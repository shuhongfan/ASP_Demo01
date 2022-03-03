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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        char ch = Convert.ToChar(TextBox1.Text);
        switch (ch)
        {
            case 'c':
            case 'C':
                Label1.Text = "学分为2";
                break;

            case 'm':
            case 'M':
                Label1.Text = "学分为6";
                break;

            case 'e':
            case 'E':
                Label1.Text = "学分为4";
                break;
        }
    }
}
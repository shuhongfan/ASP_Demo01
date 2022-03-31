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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int[] grade = {4,3,2 };
        int i = int.Parse(DropDownList1.SelectedValue);
        Label1.Text = grade[i].ToString();
        Label2.Text = "你选择了" + DropDownList1.SelectedItem.Text + "课程，学分是" + Label1.Text;
    }
}
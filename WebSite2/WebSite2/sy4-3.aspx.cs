using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int[] grade = { 4, 3, 2 };

        Label1.Text = grade[DropDownList1.SelectedIndex].ToString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int[] grade = { 4, 3, 2 };

        Label1.Text = "学分："+grade[DropDownList1.SelectedIndex].ToString();
        Label2.Text = "你选择了 "+DropDownList1.SelectedItem.Text+"课程,学分是"+grade[DropDownList1.SelectedIndex].ToString();
    }
}
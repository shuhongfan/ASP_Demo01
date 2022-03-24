using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                str += "  "+ CheckBoxList1.Items[i].Value;
            }
        }

        if (CheckBoxList1.Items[0].Selected &&
            CheckBoxList1.Items[1].Selected &&
            !CheckBoxList1.Items[2].Selected &&
            CheckBoxList1.Items[3].Selected)
        {
            Label2.Text = "正确" + str;
        }
        else {
            Label2.Text = "错误";
        }
        
    }
}
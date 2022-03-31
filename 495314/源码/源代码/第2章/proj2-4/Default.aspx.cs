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
        string str="";
        for(int i=0;i<CheckBoxList1.Items.Count;i++)
        {
            if (CheckBoxList1.Items[i].Selected==true)
            str+=" "+CheckBoxList1.Items[i].Value;
        }
        if((CheckBoxList1.Items[0].Selected)&&(CheckBoxList1.Items[1].Selected)&&(CheckBoxList1.Items[3].Selected))
            Label1.Text="正确"+"  答案为:"+str;
        else
             Label1.Text="错误";
    }
}
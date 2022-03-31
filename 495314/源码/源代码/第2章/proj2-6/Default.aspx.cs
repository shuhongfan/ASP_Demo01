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
    {  //从左边移动列表项至右边
        if(ListBox1.SelectedIndex!=-1)
        {
            ListBox2.Items.Add(ListBox1.SelectedItem);
            ListBox1.Items.Remove(ListBox1.SelectedItem);
            ListBox2.ClearSelection();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {   //从右边移动列表项至左边
        if (ListBox2.SelectedIndex != -1)
        {
            ListBox1.Items.Add(ListBox2.SelectedItem);
            ListBox2.Items.Remove(ListBox2.SelectedItem);
            ListBox1.ClearSelection();
        }
    }
}
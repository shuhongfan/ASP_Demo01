using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex!=-1)
        {
            ListBox2.Items.Add(ListBox1.SelectedItem);
            ListBox1.Items.Remove(ListBox1.SelectedItem);
            ListBox2.ClearSelection();
        }
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox2.SelectedIndex != -1)
        {
            ListBox1.Items.Add(ListBox2.SelectedItem);
            ListBox2.Items.Remove(ListBox2.SelectedItem);
            ListBox1.ClearSelection();
        }
    }
}
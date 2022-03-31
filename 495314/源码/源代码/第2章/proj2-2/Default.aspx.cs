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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<B>" + TextBox1.Text + "</B>";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<I>" + TextBox1.Text + "</I>";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<U>" + TextBox1.Text + "</U>";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<p align=left>" + TextBox1.Text + "</p>";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<p align=center>" + TextBox1.Text + "</p>";
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Literal1.Text = "<p align=right>" + TextBox1.Text + "</p>";
    }
}
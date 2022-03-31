using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    localhost.WebService lw = new localhost.WebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string cmdtxt = "select * from staff";
            this.GridView1.DataSource = lw.GetRecords(cmdtxt);
            this.GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string InsertSql = "Insert Into staff values('" + TextBox1.Text + "','" + TextBox2.Text +
 "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        int i=lw.CommandSql(InsertSql);
        if (i>0)
        {
            Response.Write("<script>alert('数据添加成功！');location='Default.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('数据添加失败！');location='Default.aspx'</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}
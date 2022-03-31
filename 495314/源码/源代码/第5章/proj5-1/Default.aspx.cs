using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    static string constr="Server=.;Database=lx;Integrated Security=True";
    SqlConnection conn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "当前连接状态是：" + conn.State.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        Label1.Text = "当前连接状态是："+conn.State.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Close();
        Label1.Text = "当前连接状态是：" + conn.State.ToString();
    }
}
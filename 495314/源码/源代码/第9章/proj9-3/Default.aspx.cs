using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqltext = "Delete from staff where Number='" + GridView1.DataKeys[e.RowIndex].Value + "'";
        int i = lw.CommandSql(sqltext);
        if (i > 0)
        {
            Response.Write("<script>alert('数据删除成功！');location='Default.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('数据删除添加失败！');location='Default.aspx'</script>");
        }
    }
}
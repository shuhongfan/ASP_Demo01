using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    protected void Bind()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("news.xml"));
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        GridView1.HeaderRow.Cells[0].Text = "编号";
        GridView1.HeaderRow.Cells[1].Text = "标题";
        GridView1.HeaderRow.Cells[2].Text = "内容";
        GridView1.HeaderRow.Cells[3].Text = "类型";
        GridView1.HeaderRow.Cells[4].Text = "日期";
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Bind();
    }
}
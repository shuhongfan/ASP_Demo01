using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    DBClass db1 = new DBClass();
    string sqlStr = "select productID,productName,productType from product";
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource =db1.bind(sqlStr);
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = db1.bind(sqlStr);
        GridView1.DataBind();
    }
}
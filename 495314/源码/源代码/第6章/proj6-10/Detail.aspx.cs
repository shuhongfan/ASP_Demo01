using System;
public partial class Detail : System.Web.UI.Page
{
    DBClass db1 = new DBClass();
     protected void Page_Load(object sender, EventArgs e)
    {
        string sqlStr = "select * from product where productID=" + Request["productID"];
        DataList1.DataSource = db1.bind(sqlStr);
        DataList1.DataBind();
    }
}
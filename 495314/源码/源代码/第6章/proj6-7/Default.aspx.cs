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
    SqlConnection conn =new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    private void bind()
    {
        SqlDataAdapter myda = new SqlDataAdapter("select * from comment", conn);
        DataSet ds = new DataSet();
        conn.Open();
        myda.Fill(ds);
        conn.Close();
        this.DataList1.DataSource = ds;
        this.DataList1.DataKeyField = "id";
        this.DataList1.DataBind();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string strid = this.DataList1.DataKeys[e.Item.ItemIndex].ToString(); //获取当前DataList控件列
        string sqlstr = "delete from comment where id='" + Convert.ToInt32(strid) + "'";
        SqlCommand comm = new SqlCommand(sqlstr, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        bind();
    }
}
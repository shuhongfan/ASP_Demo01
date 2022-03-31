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
    static string constr = "Server=.;Database=test;Integrated Security=True";
    SqlConnection conn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)//首次执行页面时
        {
            conn.Open();
            SqlDataAdapter ada = new SqlDataAdapter("select * from staff", conn);
            DataSet ds = new DataSet();
            ada.Fill(ds);
            GridView1.DataSource = ds;
           // GridView1.DataKeyNames = new string[] { "Number" };
            GridView1.DataBind();
            conn.Close();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        conn.Open();
        string sqltext="Delete from staff where Number='" + GridView1.DataKeys[e.RowIndex].Value + "'";
        SqlCommand com = new SqlCommand(sqltext, conn);
        com.ExecuteNonQuery();
        SqlDataAdapter ada = new SqlDataAdapter("select * from staff", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
}
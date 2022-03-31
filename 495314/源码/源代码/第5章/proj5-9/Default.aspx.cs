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
            GridView1.DataBind();
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        string sqltext = "delete from staff where  Title='" + this.DropDownList1.SelectedItem.Text + "'";
        SqlCommand comm = new SqlCommand(sqltext, conn);
        comm.ExecuteNonQuery();
        SqlDataAdapter ada = new SqlDataAdapter("select * from staff", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
}
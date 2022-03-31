using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string constr = "Server=.;Database=test;Integrated Security=True";
    SqlConnection conn = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlDataAdapter ada = new SqlDataAdapter("Select * From send", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        conn.Close();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string InsertSql = "Insert Into send values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand comm = new SqlCommand(InsertSql, conn);
            comm.ExecuteNonQuery();
            SqlDataAdapter ada = new SqlDataAdapter("Select * From send", conn);
            DataSet ds = new DataSet();
            ada.Fill(ds);
            conn.Close();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Response.Write("<script language=javascript>alert('数据添加成功！')</script>");
        }
        catch
        {
            Response.Write("<script language=javascript>alert('数据添加失败！')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
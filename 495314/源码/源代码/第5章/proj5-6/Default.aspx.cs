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
            GridViewBind();//绑定自定义方法GridViewBind
            if (Request.QueryString["number"] != null)//判断，如果可以获取到number的值，则执行以下操作
            {
                conn.Open();
                SqlDataAdapter ada = new SqlDataAdapter("select * from shopping where number=" + Request.QueryString["number"] + "", conn);
                DataSet ds = new DataSet();
                ada.Fill(ds, "shopping");
                conn.Close();
                DataRowView drv = ds.Tables["shopping"].DefaultView[0];
                this.TextBox1.Text = drv["name"].ToString();
                this.TextBox2.Text = drv["count"].ToString();
                this.TextBox3.Text = drv["price"].ToString();
            }
        }
    }
    public void GridViewBind()//绑定GridView控件的自定义方法
    {
        conn.Open();
        SqlDataAdapter ada = new SqlDataAdapter("select * from shopping", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string sqltext = "update shopping set name='" + this.TextBox1.Text + "',count='" + this.TextBox2.Text+ "',price='" + this.TextBox3.Text + "' where number=" + Request["number"];
            SqlCommand comm = new SqlCommand(sqltext, conn);
            comm.ExecuteNonQuery();
            conn.Close();
            GridViewBind();
            Response.Write("<script language=javascript>alert('数据更新成功！')</script>");
        }
        catch
        {
            Response.Write("<script language=javascript>alert('数据更新失败！')</script>");
        }
    }
}
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDBind();
            GVBind("select * from staff");
        } 
    }
    public void DDBind()
    {
        string sqlStr = "select distinct Title from staff";
        DataTable dt= bind(sqlStr);
        DropDownList1.DataSource =dt;
        DropDownList1.DataTextField = dt.Columns[0].ToString();
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "请选择");
    }
    public void GVBind(string sqlStr)
    {
        GridView1.DataSource = bind(sqlStr);
        GridView1.DataBind();
    }
    public DataTable bind(string sqltext)
    {
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(sqltext, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        conn.Close();
        return dt;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
            GVBind("select * from staff");
        else
        {
            string sqlStr = "select * from staff where Title='" + DropDownList1.SelectedValue.ToString() + "'";
            GVBind(sqlStr);
        }
    }
}
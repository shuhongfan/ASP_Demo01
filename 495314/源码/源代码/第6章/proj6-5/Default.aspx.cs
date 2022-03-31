using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn =
    new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlstr = "select * from goods";
        conn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, conn);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        conn.Close();
        GridView1.DataSource = myds;
        GridView1.DataBind();
    }
}
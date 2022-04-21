using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string value = TextBox1.Text;
        string sqlStr = "update staff set salary=salary+" + value + " where title='助教'";
        SqlCommand comm = new SqlCommand(sqlStr, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        GridView1.DataBind();
    }
}
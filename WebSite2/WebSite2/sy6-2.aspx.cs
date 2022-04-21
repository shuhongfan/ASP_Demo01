using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String wno = this.wno.Text;
        String wname = this.wname.Text;
        String name = this.name.Text;
        String salary = this.salary.Text;
        String sex = this.sex.Text;

        string sqlStr = "insert into staff (Number,Title,Name,Salary,Sex) values (" + wno+",'"+wname+"','"+name+"',"+salary+",'"+sex+"')";
        SqlCommand comm = new SqlCommand(sqlStr, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        GridView1.DataBind();
    }
}
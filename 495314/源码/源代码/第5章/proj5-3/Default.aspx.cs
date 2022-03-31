using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    static string constr = "Server=.;Database=test;Integrated Security=True";
    SqlConnection conn = new SqlConnection(constr);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "Select * from staff";
        conn.Open();
        SqlDataReader dr = comm.ExecuteReader();
        this.GridView1.Caption = "加工资前的职工信息表";
        this.GridView1.DataSource = dr;
        this.GridView1.DataBind();
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "Update staff Set Salary=Salary+"+this.TextBox1.Text.Trim()+" Where Title='助教'";
        conn.Open();
        int iValue = cmd.ExecuteNonQuery();
        if (iValue > 0)
        {
            cmd.CommandText = "Select * from staff";
            SqlDataReader dr = cmd.ExecuteReader();
            this.GridView1.Caption = "加工资后的职工信息表";
            this.GridView1.DataSource = dr;
            this.GridView1.DataBind();
            TextBox1.Text="";
        }
        conn.Close();
    }
}
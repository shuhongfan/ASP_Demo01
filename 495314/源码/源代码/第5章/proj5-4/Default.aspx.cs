using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{
    string constr = "Server=.;Database=test;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            using (SqlConnection conn = new SqlConnection(constr))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from staff", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.GridView1.DataSource = dt;
                this.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(constr))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from staff", conn);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            da.InsertCommand = builder.GetInsertCommand();
            DataTable dt = new DataTable();
            da.Fill(dt);
            this.TextBox1.Focus();
            DataRow row = dt.NewRow();
            row[0] = this.TextBox1.Text.Trim();
            row[1] = this.TextBox2.Text.Trim();
            row[2] = this.TextBox3.Text.Trim();
            row[3] = this.TextBox4.Text.Trim();
            row[4] = this.TextBox5.Text.Trim();
            dt.Rows.Add(row);
            da.Update(dt);
            this.GridView1.DataSource = dt;
            this.DataBind();
        }
    }
}
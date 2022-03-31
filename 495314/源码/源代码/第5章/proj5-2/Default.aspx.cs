using System;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = "Server=.;Database=test;Integrated Security=True";
        SqlConnection conn = new SqlConnection(constr);
        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "Select * from staff";
        conn.Open();
        SqlDataReader dr = comm.ExecuteReader();
        while(dr.Read())
        {
            this.ListBox1.Items.Add(string.Format("{0}\t{1}",dr[1],dr[3]));
        }
        conn.Close();
    }
}
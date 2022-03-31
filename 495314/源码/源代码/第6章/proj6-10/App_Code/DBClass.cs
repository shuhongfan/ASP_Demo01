using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// DBClass 的摘要说明
/// </summary>
public class DBClass
{
    public SqlConnection conn;
    public DBClass()
	{
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
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
}
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

/// <summary>
/// WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    public WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int CommandSql(string cmdtext)
    {
        conn.Open();
        SqlCommand comm = new SqlCommand(cmdtext, conn);
        int x = comm.ExecuteNonQuery();
        conn.Close();
        return x;
    }
    [WebMethod]
    public DataSet GetRecords(string sqltext)
    {
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(sqltext, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        return ds;
    }   
}

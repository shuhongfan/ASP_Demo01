using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string[] GetProvinceList(string prefixText)  //返回省名
    {
        string[] Name = null;
        SqlConnection conn =
        new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        conn.Open();
        SqlCommand sqlComd = conn.CreateCommand();
        sqlComd.CommandType = CommandType.Text;
        sqlComd.CommandText = "select name from province where name like @prefixText";
        sqlComd.Parameters.Add(new SqlParameter("@prefixText", string.Format("{0}%", prefixText)));
        SqlDataAdapter sqlAdpt = new SqlDataAdapter();
        sqlAdpt.SelectCommand = sqlComd;
        DataTable table = new DataTable();
        sqlAdpt.Fill(table);
        Name = new string[table.Rows.Count];
        int i = 0;
        foreach (DataRow rdr in table.Rows)
        {
            Name[i] = rdr["name"].ToString().Trim();
            ++i;
        }
        return Name;
    }
    
}

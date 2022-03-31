using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn =new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Label3.Text = "1";
            rpBind();
        }    
    }
    public void rpBind() 
   {
        int curpage = Convert.ToInt32(this.Label3.Text);
        PagedDataSource ps = new PagedDataSource();
        conn.Open();
        string sqlstr = "select * from goods";
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "goods");
        conn.Close();
        ps.DataSource = ds.Tables["goods"].DefaultView;
        ps.AllowPaging = true; //是否可以分页
        ps.PageSize = 1; //每页显示的记录数量
        ps.CurrentPageIndex = curpage - 1; //取得当前页的页码
        this.LinkButton1.Enabled = true;
        this.LinkButton2.Enabled = true;
        this.LinkButton3.Enabled = true;
        this.LinkButton4.Enabled = true;
        if (curpage == 1)
        {
            this.LinkButton1.Enabled = false;//不显示第一页按钮
            this.LinkButton2.Enabled = false;//不显示上一页按钮
        }
        if (curpage == ps.PageCount)
        {
            this.LinkButton3.Enabled = false;//不显示下一页
            this.LinkButton4.Enabled = false;//不显示最后一页
        }
        this.Label4.Text = Convert.ToString(ps.PageCount); 
        this.Repeater1.DataSource = ps;
        Repeater1.DataBind();  
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.Label3.Text = "1";
        this.rpBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.Label3.Text = Convert.ToString(Convert.ToInt32(this.Label3.Text) - 1);
        this.rpBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        this.Label3.Text = Convert.ToString(Convert.ToInt32(this.Label3.Text) + 1);
        this.rpBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        this.Label3.Text = this.Label4.Text;
        this.rpBind();
    }
}
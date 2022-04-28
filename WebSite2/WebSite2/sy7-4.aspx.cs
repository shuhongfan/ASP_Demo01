using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_4 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Label1.Text = "1";
            rpBind();
        }
    }

    public void rpBind()
    {
        int curpage = Convert.ToInt32(this.Label1.Text);
        PagedDataSource ps = new PagedDataSource();
        conn.Open();
        string sqlstr = "select * from goods";
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "goods");
        conn.Close();
        ps.DataSource = ds.Tables["goods"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 1;
        ps.CurrentPageIndex = curpage - 1;
        this.LinkButton1.Enabled = true;
        this.LinkButton2.Enabled = true;
        this.LinkButton3.Enabled = true;
        this.LinkButton4.Enabled = true;
        if (curpage == 1)
        {
            this.LinkButton1.Enabled = false;
            this.LinkButton2.Enabled = false;
        }
        if (curpage == ps.PageCount)
        {
            this.LinkButton3.Enabled = false;
            this.LinkButton4.Enabled = false;
        }
        this.Label2.Text = Convert.ToString(ps.PageCount);
        this.Repeater1.DataSource = ps;
        Repeater1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.Label1.Text = "1";
        this.rpBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.Label1.Text = Convert.ToString(Convert.ToInt32(this.Label1.Text) - 1);
        this.rpBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        this.Label1.Text = Convert.ToString(Convert.ToInt32(this.Label1.Text) + 1);
        this.rpBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        this.Label1.Text = this.Label2.Text;
        this.rpBind();
    }
}
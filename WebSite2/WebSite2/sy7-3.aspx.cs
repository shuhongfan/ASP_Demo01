using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_3 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Label1.Text = "1";
            dlBind();
        }

    }

    public void dlBind()
    {
        int curpage = Convert.ToInt32(this.Label1.Text);
        PagedDataSource ps = new PagedDataSource();
        conn.Open();
        string sqlstr = "select * from post";
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "post");
        conn.Close();
        ps.DataSource = ds.Tables["post"].DefaultView;
        ps.AllowPaging = true; 
        ps.PageSize = 2;
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
        this.DataList1.DataSource = ps;
        this.DataList1.DataKeyField = "id";
        this.DataList1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.Label1.Text = "1";
        this.dlBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.Label1.Text = Convert.ToString(Convert.ToInt32(this.Label1.Text) - 1);
        this.dlBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        this.Label1.Text = Convert.ToString(Convert.ToInt32(this.Label1.Text) + 1);
        this.dlBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        this.Label1.Text = this.Label2.Text;
        this.dlBind();
    }
}
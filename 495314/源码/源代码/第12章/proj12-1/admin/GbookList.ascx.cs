using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_GbookList : System.Web.UI.UserControl
{

    DBClass db1 = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Label3.Text = "1";
            bind();
        }    
    }
    public void bind()
    {
        string strsql = "select * from gbook order by id DESC";
        DataTable dt = db1.GetRecords(strsql);
        int curpage = Convert.ToInt32(this.Label3.Text);
        PagedDataSource pds = new PagedDataSource();	//使用分页类
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true; //是否可以分页
        pds.PageSize = 2; //每页显示的记录数量
        pds.CurrentPageIndex = curpage - 1; //取得当前页的页码
        this.LinkButton1.Enabled = true;
        this.LinkButton2.Enabled = true;
        this.LinkButton3.Enabled = true;
        this.LinkButton4.Enabled = true;
        if (curpage == 1)
        {
            this.LinkButton1.Enabled = false;//不显示第一页按钮
            this.LinkButton2.Enabled = false;//不显示上一页按钮
        }
        if (curpage == pds.PageCount)
        {
            this.LinkButton3.Enabled = false;//不显示下一页
            this.LinkButton4.Enabled = false;//不显示最后一页
        }
        this.Label4.Text = Convert.ToString(pds.PageCount);
        this.DataList1.DataSource = pds;
        this.DataList1.DataKeyField = "id";
        this.DataList1.DataBind();  
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        this.Label3.Text = "1";
        bind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        this.Label3.Text = Convert.ToString(Convert.ToInt32(this.Label3.Text) - 1);
        this.bind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        this.Label3.Text = Convert.ToString(Convert.ToInt32(this.Label3.Text) + 1);
        this.bind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        this.Label3.Text = this.Label4.Text;
        this.bind();
    }
}
 
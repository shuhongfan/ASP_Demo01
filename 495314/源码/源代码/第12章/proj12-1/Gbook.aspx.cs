using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gbook : System.Web.UI.Page
{
    DBClass db1 = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || Session["userid"] == null)
        {
            Panel1.Visible = false;
            Label1.Text = "<a href='" + "login.aspx'>"+"登录</a>";
            Label2.Text = "<a href='" + "register.aspx'>" + "注册</a>"; 
            Label3.Text = "<a href='" + "~/admin/login.aspx'>" + "管理员登录</a>";
        }
        else
        {
            Label1.Text = "你好" + "<a href='" + "personal.aspx?uid=" + Request.QueryString["id"] + "'>" + Session["username"].ToString() + "</a>";
            Label2.Text = "<a href='" + "seebook.aspx?uid=" + Session["userid"].ToString() + " &name=" + Session["username"] + "'>查看留言</a>";
            Label3.Text = "<a href='" + "logout.aspx'>" + "注销</a>";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strsql = "insert into gbook (title,name,time,contents,admin,reptime,repcontent,classid,userid) values ('" + TextBox2.Text + "','" + Session["username"].ToString() + "','" + DateTime.Now + "','" + TextBox1.Text + "','','" + DateTime.Now + "','','" + Request.QueryString["cid"] + "','" + Session["userid"].ToString() + "')";
        db1.ExecuteSql(strsql);
        Response.Redirect("Gbook.aspx?cid=" + Request.QueryString["cid"]);
    }
}
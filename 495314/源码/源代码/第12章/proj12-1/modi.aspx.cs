using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modi : System.Web.UI.Page
{
    DBClass db1 = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            string uid = Request.QueryString["uid"];		//获取传递的参数
            string strsql = "select * from register where id=" + uid ;	//编写查询语句
            DataTable dt=db1.GetRecords(strsql);		//获取查询结果
            Label1.Text =dt.Rows[0]["username"].ToString();	//填充用户名
            TextBox1.Text = dt.Rows[0]["password"].ToString();		//填充密码
            DropDownList1.SelectedItem.Text =dt.Rows[0]["sex"].ToString();	//填充性别
            TextBox3.Text = dt.Rows[0]["QQ"].ToString();		//填充QQ
            TextBox4.Text = dt.Rows[0]["information"].ToString();	//填充用户信息
            TextBox5.Text = dt.Rows[0]["others"].ToString();		//填充用户备注 
        }
        Label2.Text = "<a href='" + "personal.aspx?uid=" + Request.QueryString["uid"] + "'>返回</a>";
        Label3.Text = "<a href='" + "logout.aspx'>" + "注销</a>";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       string strsql;
       if (!String.IsNullOrEmpty(TextBox2.Text))	//如果要修改密码
       {
         strsql = "update register set password='" + TextBox2.Text + "',sex='" + DropDownList1.Text + "',QQ='" + TextBox3.Text + "',information='" + TextBox4.Text + "',others='" + TextBox5.Text + "' where id=" + Request.QueryString["uid"];
         db1.ExecuteSql(strsql);
         Response.Write("<script>alert('修改成功！');</script>");
       }
       else //如果不修改密码
       {
           strsql = "update register set sex='" +
                          DropDownList1.Text + "',QQ='" + TextBox3.Text + "',information='" + TextBox4.Text +
                          "',others='" + TextBox5.Text + "' where id='" + Request.QueryString["uid"] + "'";
         }
         db1.ExecuteSql(strsql);
         Response.Redirect("personal.aspx?uid=" + Request.QueryString["uid"]);
    }
}
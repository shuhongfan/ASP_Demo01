using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = "你好" + Session["username"];
        Label10.Text = "<a href='" + "Gbook.aspx?uid=" + Request.QueryString["uid"] + "'>留言</a>";
        Label11.Text = "<a href='" + "logout.aspx'>" + "注销</a>";
        DBClass db1 = new DBClass();
        if (!String.IsNullOrEmpty(Request.QueryString["uid"]))		//获取传递的uid
        {
            string uid = Request.QueryString["uid"];				//参数值获取
            string strsql = "select * from register where id=" + uid ;//编写查询语句
            DataTable dt= db1.GetRecords(strsql);							
            Label1.Text = dt.Rows[0]["username"].ToString();		//显示用户名
            Label2.Text = dt.Rows[0]["sex"].ToString();							//显示性别    
                Label3.Text = dt.Rows[0]["QQ"].ToString();					//输出QQ值
                Label4.Text = dt.Rows[0]["information"].ToString();			//输出用户信息
                Label5.Text = dt.Rows[0]["others"].ToString();				//输出备注
                string strsql1 = "select count(*) as mycount from gbook where name='" + Label1.Text + "'";
                DataTable dt1= db1.GetRecords(strsql1);			//查询统计信息
                Label6.Text =dt1.Rows[0][0].ToString();	//输出统计信息               
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("modi.aspx?uid=" + Request.QueryString["uid"]);
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBClass db1 = new DBClass();
        string strsql = "select * from register where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
         DataTable dt = db1.GetRecords(strsql);
         if (dt != null && dt.Rows.Count == 1)  //登录成功
         {
             Session["username"] = TextBox1.Text;
             Session["userid"] =dt.Rows[0]["id"].ToString();

             Response.Redirect("Gbook.aspx?id=" + Session["userid"]);
            
         }
         else
         {
             Response.Write("<script languge='javascript'>alert('无法登录,用户名或密码错误!'); window.location.href='login.aspx'</script>");
         }
    }
}
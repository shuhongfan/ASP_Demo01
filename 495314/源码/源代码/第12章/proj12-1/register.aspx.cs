using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBClass db1 = new DBClass();
        try
        {
            string check = "select * from register where username='" + TextBox1.Text + "'";
            DataTable dt = db1.GetRecords(check);
            if (dt != null && dt.Rows.Count == 1)  //用户名重名
            {
                Response.Write("<script>alert('注册失败，用户名重名！');</script>");
            }
            else
            {
                string strsql = "insert into register (username,password,sex,QQ,information,others) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                db1.ExecuteSql(strsql);
                string strsql2 = "select * from register where username='" + TextBox1.Text + "'";
                DataTable dt2= db1.GetRecords(strsql2);
                string id = dt2.Rows[0]["id"].ToString();
                Response.Write("<script languge='javascript'>alert('注册成功！'); window.location.href='login.aspx?id=" + id + "'</script>");
            }         
        }
        catch
        {
            Response.Write("<script languge='javascript'>alert('注册失败！'); window.location.href='Default.aspx'</script>");
           
        }
    }
}
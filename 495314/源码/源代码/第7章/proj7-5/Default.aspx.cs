using System;

public partial class _Default : System.Web.UI.Page
{
    public string getvalue()
    {
        System.Collections.Specialized.NameValueCollection nv = new System.Collections.Specialized.NameValueCollection(System.Web.HttpContext.Current.Request.Form);
        return nv.GetValues("pwd")[0].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (getvalue() != "")
        {
            string info = "登录名：" + TextBox1.Text + "  登录密码：" + getvalue();
            ClientScript.RegisterStartupScript(this.GetType(), "", "alert('" + info + "');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "alert('请输入密码');", true);
        }
    }
}
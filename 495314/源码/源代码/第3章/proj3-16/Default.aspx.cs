using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Label1.Text = "当前在线人数为：" + Application["online"].ToString();
            TextBox1.Text = Application["chat"].ToString();
            Label2.Text = Session["name"].ToString();
            Response.AddHeader("refresh", "30");
        }
        else
            Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string newmessage = Session["name"] + "：" + DateTime.Now.ToString()+"\r"+TextBox2.Text+"\r"+Application["chat"];
        if (newmessage.Length > 500)
            newmessage = newmessage.Substring(0,499);
        Application.Lock();
        Application["chat"] = newmessage;
        Application.UnLock();
        Label2.Text = "";
        TextBox1.Text = Application["chat"].ToString();
    }
}
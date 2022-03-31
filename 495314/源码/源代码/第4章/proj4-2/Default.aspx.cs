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

    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        this.Theme = Request.QueryString["theme"];
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string themestyle = DropDownList1.SelectedItem.Text;
        switch(themestyle)
        {
            case "默认主题":
                Response.Redirect("Default.aspx?theme=Common");
                break;
            case "红色主题":
                Response.Redirect("Default.aspx?theme=Theme1");
                break;
            case "蓝色主题":
                Response.Redirect("Default.aspx?theme=Theme2");
                break;
        }
    }
}
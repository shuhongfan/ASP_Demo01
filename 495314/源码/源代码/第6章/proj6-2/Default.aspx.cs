using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected ArrayList ItemList = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ItemList.Add("星期一：Monday");
            ItemList.Add("星期二：Tuesday");
            ItemList.Add("星期三：Wednesday");
            ItemList.Add("星期四：Thursday");
            ItemList.Add("星期五：Friday");
            ItemList.Add("星期六：Saturday");
            ItemList.Add("星期日：Sunday");
            this.DropDownList1.DataBind();
        }
    }
}
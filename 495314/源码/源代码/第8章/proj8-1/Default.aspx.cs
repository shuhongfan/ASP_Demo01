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
        MyLinqDataContext dc = new MyLinqDataContext();	//创建对象
        var StudentList = from d in dc.student orderby d.number descending select d;//执行查询
        foreach (var stu in StudentList) //遍历元素
        {
            Response.Write("学号：" + stu.number.ToString() +"姓名：" + stu.name.ToString()+ "<br/>");	
        }
    }
}
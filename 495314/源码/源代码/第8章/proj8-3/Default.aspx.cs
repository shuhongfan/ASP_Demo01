using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();	//创建数据连接对象
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("修改数据前：" + "<br/>");
        output();
    }
    protected void output()
    {
        var StudentList = from d in dc.student where d.number=="17006" select d;//执行查询
        foreach (var stu in StudentList) //遍历元素
        {
            Response.Write("学号：" + stu.number.ToString() + " 姓名：" + stu.name.ToString() + " 性别：" + stu.sex.ToString() + "<br/>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var element = from d in dc.student where d.number=="17006" select d;//查询
        foreach (var stu in element)	//遍历集合
        {
            stu.name= "吴一男";	//修改值
            stu.sex = "男";	//修改值
        }
        dc.SubmitChanges();	//更新
        Button1.Visible = false;
        Response.Write("<br/>" + "修改数据后：" + "<br/>");
        output();//输出


    }
}
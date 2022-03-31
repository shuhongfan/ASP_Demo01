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
        Response.Write("删除数据前：" + "<br/>");
        output();

    }
    protected void output()
    {
        var StudentList = from d in dc.student select d;//执行查询
        foreach (var stu in StudentList) //遍历元素
        {
            Response.Write("学号：" + stu.number.ToString() + " 姓名：" + stu.name.ToString() +
    " 性别：" + stu.sex.ToString() + "<br/>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var del = from d in dc.student where d.number == "17006" select d;	//查询要删除的行
        foreach (var stu in del)	//遍历集合
        {
            dc.student.DeleteOnSubmit(stu);	//执行删除操作
        }
        dc.SubmitChanges();//更新数据库
        Button1.Visible = false;
        Response.Write("<br/>" + "删除数据后：" + "<br/>");
        output();//输出

    }
}
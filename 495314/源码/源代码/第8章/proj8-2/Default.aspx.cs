using System;
using System.Linq;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();	//创建数据连接对象
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("插入数据前："+"<br/>");
        output();
    }
    protected void output()
    {
        var StudentList = from d in dc.student select d;//执行查询
        foreach (var stu in StudentList) //遍历元素
        {
            Response.Write("学号：" + stu.number.ToString() + " 姓名：" + stu.name.ToString() +" 性别：" + stu.sex.ToString() + "<br/>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        student stu = new student { number="17006",name="吴一兰",sex ="女" };//创建一个数据对象
        dc.student.InsertOnSubmit(stu);	//执行插入数据操作
        dc.SubmitChanges();	//执行更新操作
        Button1.Visible=false;
        Response.Write("<br/>"+"插入数据后：" + "<br/>");
        output();
    }
}
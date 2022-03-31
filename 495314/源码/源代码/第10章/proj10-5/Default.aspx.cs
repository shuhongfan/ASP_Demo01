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
    private int index  //定义在线考试总时间变量index,并设置读写属性
    {
        get
        {
            object obj = ViewState["index "];
            return (obj == null) ? 600 : (int)obj;
        }
        set
        {
            ViewState["index "] = value;
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        this.index--;
        if (this.index == 0) //考试时间到了
        {
            this.Timer1.Enabled = false;//设置Timer控件不可见
            //时间到时，此处略去自动提交试卷的方法
        }
        else
        {
            //显示考试剩余时间
            this.Label1.Text = "还有"+this.index / 60 + "分" + this.index % 60 + "秒将停止考试，请及时提交试卷，否则成绩无效！";
        } 
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string[][] holidays = new string[13][];
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int n = 0; n < 13; n++)
            holidays[n] = new string[32];
        holidays[1][1] = "元旦";
        holidays[3][8] = "妇女节";
        holidays[5][1] = "劳动节";
        holidays[5][4] = "青年节";
        holidays[6][1] = "儿童节";
        holidays[7][1] = "党的生日";
        holidays[8][1] = "建军节";
        holidays[10][1] = "国庆节";
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        //获取表示在日历控件中的日期CalendarDay
        CalendarDay d = ((DayRenderEventArgs)e).Day;
        //获取表示在日历控件中单元格的TableCell
        TableCell c = ((DayRenderEventArgs)e).Cell;
        //生成单元格的日期是否属于显示的月份，如果不属于显示的月份，则清除此单元格里的内容
        if (e.Day.IsOtherMonth)
        {
           e.Cell.Controls.Clear();
        }
        else
       {
           string Hol = holidays[e.Day.Date.Month][e.Day.Date.Day];
           if (Hol != string.Empty)
               e.Cell.Controls.Add(new LiteralControl("<br><font color=blue size=2>" + Hol + "</font>"));
        }
    }
}
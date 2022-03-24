using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_5 : System.Web.UI.Page
{
    String[][] holidays = new string[13][];
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 13; i++)
        {
            holidays[i] = new string[32];
        }
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
        CalendarDay d = ((DayRenderEventArgs)e).Day;
        TableCell c = ((DayRenderEventArgs)e).Cell;
        if (e.Day.IsOtherMonth){
            e.Cell.Controls.Clear();
        }
        else
        {
            String Hol = holidays[e.Day.Date.Month][e.Day.Date.Day];
            if (Hol != string.Empty)
            {
                e.Cell.Controls.Add(new LiteralControl("<br><font color=blue size=2>" + Hol + "</br>")); ;
            }
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}
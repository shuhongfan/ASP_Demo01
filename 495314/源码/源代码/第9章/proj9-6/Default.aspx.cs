using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    TrainTime.TrainTimeWebService ttService = new TrainTime.TrainTimeWebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] str = ttService.getStationName();
        for (int i = 0; i < str.Length; i++)
        {
            DropDownList1.Items.Add(str[i]);
            DropDownList2.Items.Add(str[i]);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string StartStation, ArriveStation;
        StartStation = DropDownList1.Text;
        ArriveStation = DropDownList2.Text;
        DataSet ds = ttService.getStationAndTimeByStationName(StartStation, ArriveStation, "");
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
}
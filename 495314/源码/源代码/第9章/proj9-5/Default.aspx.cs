using System;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{
    WeatherService.WeatherWebService wws = new WeatherService.WeatherWebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindPro();
            BindCity();
            BindWeather();
        }
    }
    // 获得省份
    protected void BindPro()
    {
        string[] pro = wws.getSupportProvince();
        for (int i = 0; i < pro.Length; i++)
        {
            DropDownList1.Items.Add(pro[i]);
        }
    }
    //获得城市
    protected void BindCity()
    {
        DropDownList2.Items.Clear();
        string[] city = wws.getSupportCity(DropDownList1.SelectedValue);
        for (int i = 0; i < city.Length; i++)
        {
            int k = city[i].IndexOf(' ');
            string kk=city[i].Substring(0,k+1);
            DropDownList2.Items.Add(kk);
        }
    }
    //天气预报
    protected void BindWeather()
    {
        string[] mystr = wws.getWeatherbyCityName(DropDownList2.Text);
        Label1.Text = mystr[0].ToString();
        Label2.Text = mystr[1].ToString();
        Label3.Text = mystr[5].ToString();
        Label4.Text = mystr[6].ToString();
        Label5.Text = mystr[7].ToString();
        Image1.ImageUrl = "~/images/"+mystr[8].ToString();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BindWeather();
    }
    
}
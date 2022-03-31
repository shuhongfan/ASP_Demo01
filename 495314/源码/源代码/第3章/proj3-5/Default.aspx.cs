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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/msexcel";
        Response.AddHeader("Content-Disposition", "attachment;filename=成绩册.xls");
        string filename = Server.MapPath("成绩册.xls");
        //指定编码 防止中文文件名乱码  
        Response.HeaderEncoding = System.Text.Encoding.GetEncoding("gb2312");
        Response.TransmitFile(filename);  
    }
}
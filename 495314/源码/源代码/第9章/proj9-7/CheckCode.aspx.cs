using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        localhost.WebService lw = new localhost.WebService();
        int length = 4;
        string strKey = Code(length);
        byte[] data = lw.CheckCodeService(length, ref strKey);
        Response.OutputStream.Write(data, 0, data.Length);
    }
    public string Code(int length)
    {
        string strResult = "";
        // 采用的字符集，可以随即拓展，并可以控制字符出现的几率
        string strCode = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        Random rd = new Random();
        for (int i = 0; i < length; i++)
        {
            char c = strCode[rd.Next(strCode.Length)];
            // 随机获取字符
            strResult += c.ToString();
        }
        Session["CheckCode"] = strResult;
        return strResult;
    }
}
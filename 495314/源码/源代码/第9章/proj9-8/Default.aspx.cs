using System;
using System.Net;
using System.Management;  

public partial class _Default : System.Web.UI.Page
{
    //创建web服务对象
    localhost.WebService lw = new localhost.WebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //获取客户端机器名
            Label1.Text = Dns.GetHostName();
            //获取客户端网卡号
            Label2.Text = GetMacAddress();
        }
    }
  
    private string GetMacAddress()
    {
        try
        {
            string mac = "";
            ManagementClass mc = new ManagementClass("Win32_NetworkAdapterConfiguration");//获取网卡硬件地址
            ManagementObjectCollection moc = mc.GetInstances();
            foreach (ManagementObject mo in moc)
            {
                if ((bool)mo["IPEnabled"] == true)//绑定了TCP/IP并已激活了的网络适配器
                {
                    mac = mo["MacAddress"].ToString();
                    break;
                }
            }
            moc = null;
            mc = null;
            return mac;
        }
        catch
        {
            Response.Write("<script>alert('您没有联网！')</script>");
            return "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text=lw.getNumber(Label2.Text.Trim(),Label1.Text.Trim());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //获取用户填写的注册码
        string strNum = TextBox1.Text + "-" + TextBox2.Text + "-" + TextBox3.Text + "-" + TextBox4.Text; 
        string[] strs = lw.getCar(strNum).Split('-');//将Web服务中的方法返回的分解值，分组      
        string hn = Label1.Text;//获取机器名
        if (hn.Length > 4)//截取4位字符
        {  
            hn = hn.Substring(0, 4);
        }
        else
        {
            int len = hn.Length; //获取机器名的长度  
            switch (len)//将机器名填充到4位
            {
                case 1: hn += "ABC"; break;
                case 2: hn += "AB"; break;
                case 3: hn += "A"; break;
            }
        }
        //判断分解的客户端网卡号、机器名和自动获取到的客户端网卡号、机器名是否相同
        if (Label2.Text.Replace(":", "").ToLower().Trim() == strs[1].ToLower().Trim() && hn.ToLower().Trim() == strs[0].ToLower().Trim())
        {
            Response.Write("<script>alert('注册成功！')</script>");
        }
        else
        {
            Response.Write("<script>alert('注册失败！')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}
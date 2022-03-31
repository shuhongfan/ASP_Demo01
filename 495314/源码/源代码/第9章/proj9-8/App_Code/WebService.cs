using System.Web.Services;

/// <summary>
/// WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string getNumber(string carNmu, string hosNam)
    {
        string cardStr = carNmu.Replace(":", "");//将字符串中“:”替换为空字符
        string[] cards = new string[4];//创建数组
        int s = 0;
        string hn = hosNam; //获取机器名
        if (hn.Length > 4)//判断机器名是否大于4位
        {
            hn = hn.Substring(0, 4);//截取4位字符
        }
        else
        {
            int len = hn.Length;//获取机器名的长度
            switch (len)//将机器名填充到4位
            {
                case 1: hn += "ABC"; break;
                case 2: hn += "AB"; break;
                case 3: hn += "A"; break;
            }
        }       
        hn = hn.ToUpper();//将机器名转换为大写
        for (int i = 0; i < 4; i++)//创建for循环添加数组
        {
            //将网卡号分成4组，在每组i的位置插入所获取的1为机器名
            cards[i] = cardStr.Substring(s, 3).Insert(i, hn.Substring(i, 1));
            s += 3;
        }
        string getRegNum = ""; 
        for (int k = 0; k < 3; k++)//将每个数组之间插入“-”并存储在字符串变量中
        {
            getRegNum += cards[k] + "-";
        } 
        return getRegNum += cards[3]; //返回所生成的注册码
    }
    [WebMethod]
    public string getCar(string str)
    {
        string[] cardStr = str.Split('-');//将字符串传通过“-”进行分组
        string card = "";
        string hn = ""; 
        for (int i = 0; i < 4; i++)//创建for循环获取网卡号和机器名
        {
            hn += cardStr[i].Substring(i, 1);//获取机器名
            card += cardStr[i].Remove(i, 1);//获取网卡号
        } 
        return hn + "-" + card;//返回机器名和网卡号
    }
    
    
}

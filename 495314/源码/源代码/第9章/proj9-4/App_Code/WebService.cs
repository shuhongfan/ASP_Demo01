using System.Net.Mail;
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
    public void SendMailMsg(string sendfrom, string sendfrompwd, string sendto, string subject, string body, string smtpserver, int smtpport)
    {
        MailMessage SendMsg = new MailMessage(sendfrom, sendto);
        SendMsg.Subject = subject;
        SendMsg.Body = body;
        SmtpClient client = new SmtpClient(smtpserver, smtpport);
        client.EnableSsl = true;
        client.Credentials = new System.Net.NetworkCredential(sendfrom, sendfrompwd);
        client.Send(SendMsg);
    }        
}

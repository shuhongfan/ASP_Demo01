<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // 在应用程序启动时运行的代码
        int count = 0;
        StreamReader sr;
        sr = File.OpenText(Server.MapPath("counter.txt"));
        while (sr.Peek()!=-1)
        {
            string str = sr.ReadLine();
            count = int.Parse(str);
        }
        sr.Close();

        Application["counter"] = count;

        Application["online"] = 0;
        Application["chat"] = "";
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  在应用程序关闭时运行的代码

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // 在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // 在新会话启动时运行的代码
        Application.Lock();

        int count = 0;
        count = (int) Application["counter"];
        count += 1;
        Application["counter"] = count;

        StreamWriter sw;
        sw = new StreamWriter(Server.MapPath("counter.txt"), false);
        sw.WriteLine(count);
        sw.Close();

        Application.UnLock();


        Application.Lock();
        Application["online"] = (int) Application["online"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e) 
    {
        // 在会话结束时运行的代码。 
        // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
        // 或 SQLServer，则不引发该事件。

        Application.Lock();
        Application["online"] = (int) Application["online"] - 1;
        Application.UnLock();
    }
       
</script>

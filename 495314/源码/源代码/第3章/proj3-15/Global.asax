<%@ Application Language="C#" %>
<%@ Import Namespace=" System.IO " %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // 在应用程序启动时运行的代码
        int count = 0;
        StreamReader srd;
        //取得文件的实际路径
        string file_path = Server.MapPath("counter.txt");
        //打开文件进行读取
        srd = File.OpenText(file_path);
        while (srd.Peek() != -1)
        {
            string str = srd.ReadLine();
            count = int.Parse(str);
        }
        srd.Close();
        object obj = count;
        //将从文件中读取的网站访问量存放在Application对象中
        Application["counter"] = obj;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  在应用程序关闭时运行的代码
        int Stat = 0;
        Stat = (int)Application["counter"];
        string file_path = Server.MapPath("counter.txt");
        StreamWriter srw = new StreamWriter(file_path, false);
        srw.WriteLine(Stat);
        srw.Close();
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // 在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // 在新会话启动时运行的代码
        Application.Lock();
        //数据累加
        int Stat = 0;
        //获取Application对象中保存的网站总访问量
        Stat = (int)Application["counter"];
        Stat += 1;
        object obj = Stat;
        Application["counter"] = obj;
        //将数据记录写入文件
        string file_path = Server.MapPath("counter.txt");
        StreamWriter srw = new StreamWriter(file_path, false);
        srw.WriteLine(Stat);
        srw.Close();
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e) 
    {
        // 在会话结束时运行的代码。 
        // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
        // 或 SQLServer，则不引发该事件。

    }
       
</script>

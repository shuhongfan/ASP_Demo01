<%@ page language="C#" autoeventwireup="true" inherits="sy4_5, App_Web_5bnw3vtt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名: <asp:TextBox ID="username" runat="server"></asp:TextBox> <br />
            密码: <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox> <br />
            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

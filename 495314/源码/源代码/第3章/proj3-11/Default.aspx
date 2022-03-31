<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Cookie实现密码记忆功能</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="用户名" Width="60px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密码" width="60px"></asp:Label> 
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="记住密码" TextAlign="Left" />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
        <asp:Button ID="Button2" runat="server" Text="重置" />
    </div>
    </form>
</body>
</html>

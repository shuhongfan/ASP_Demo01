<%@ page language="C#" autoeventwireup="true" inherits="sy4_7_2, App_Web_sfdh0elm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div style="font-family: 仿宋; font-size: xx-large; color: #FF0000; background-color: #C0C0C0; text-align: center; height: 60px; line-height: 60px; font-weight: bolder;">在线聊天室</div>
    <div style="background-color: #FFCCCC; line-height: 40px; height: 40px">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCFF" ForeColor="#0033CC" Height="300px" TextMode="MultiLine" Width="100%"></asp:TextBox>
    </div>
    <div style="background-color: #C0C0C0; line-height: 40px; width: 80%; height: 40px; float: left;">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="570px"></asp:TextBox></div>
    <div style="line-height: 40px; height: 40px; width: 20%; float: left; clear: right; background-color: #808080; text-align: center;">
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
    </div>
</form>
</body>
</html>

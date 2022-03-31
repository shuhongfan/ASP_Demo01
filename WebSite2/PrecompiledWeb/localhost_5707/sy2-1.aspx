<%@ page language="C#" autoeventwireup="true" inherits="sy2_1, App_Web_5bnw3vtt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请输入分数:<asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="转换" />
            <br />
            该分数对应的等级为: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>

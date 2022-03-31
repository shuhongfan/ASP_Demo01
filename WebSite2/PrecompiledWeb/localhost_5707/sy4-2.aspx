<%@ page language="C#" autoeventwireup="true" inherits="sy4_2, App_Web_sfdh0elm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名: <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="提交" PostBackUrl="~/sy4-2-2.aspx" />
        </div>
    </form>
</body>
</html>

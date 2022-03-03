<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy2-3.aspx.cs" Inherits="sy2_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请输入一个整数:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="反向显示" />
            <br />
            反向显示的整数为:<asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>主题的使用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr>
                <td colspan="3">用户登录</td>
            </tr>
            <tr>
                <td class="auto-style1">用户名：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="*用户名不能为空" SkinID="Label-red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">密码：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="107px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="无密码将以游客身份登录"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="登录" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="重置" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

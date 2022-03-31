<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>绑定变量</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 400px;">
            <tr>
                <td colspan="2" style="text-align: center">绑定变量</td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right">显示登录名：</td>
                <td style="text-align: left; width: 200px">
                    <asp:Label ID="Label1" runat="server" Text="<%#name%>"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right">显示登录时间：</td>
                <td style="text-align: left; width: 200px">
                    <asp:Label ID="Label2" runat="server" Text="<%#loginTime%>"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

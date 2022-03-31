<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Web Service发送E-mail</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 500px;">
            <tr>
                <td style="width: 160px; text-align: right">发件人邮箱地址</td>
                <td style="width: 320px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 160px; text-align: right">发件人邮箱密码</td>
                <td style="width: 320px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="320px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 160px; text-align: right">收件人邮箱地址</td>
                <td style="width: 320px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 160px; text-align: right">邮件主题</td>
                <td style="width: 320px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 160px; text-align: right">邮件内容</td>
                <td style="width: 320px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="135px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px; text-align: right">&nbsp;</td>
                <td style="width: 350px; text-align: center;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发送" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

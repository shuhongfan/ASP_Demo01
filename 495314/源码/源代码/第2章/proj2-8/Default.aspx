<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Panel控件的应用</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; width: 300px">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">会员请登录</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">新用户注册</asp:LinkButton> </div>
        <asp:Panel ID="Panel1" runat="server" Width="300px">
            <table style="width:100%;">
                <tr>
                    <td colspan="2" style="background-color: #C0C0C0; text-align: center">登录</td>
                </tr>
                <tr>
                    <td style="text-align: right">用户名：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">密码：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="登录" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="300px">
            <table style="width:100%;">
                <tr>
                    <td colspan="2" style="background-color: #00FFFF; text-align: center">新用户注册</td>
                </tr>
                <tr>
                    <td style="text-align: right">用户名：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">密码：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button2" runat="server" Text="注册" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Web Service实现验证码</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 400px; background-color: #C0C0C0;">
            <tr>
                <td colspan="2" style="text-align: center; font-weight: bolder;">用户登录</td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">用户名：</td>
                <td style="width: 300px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">密码：</td>
                <td style="width: 300px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;">验证码：</td>
                <td style="width: 300px">
                    <table style="width:100%;">
                        <tr>
                            <td style="width: 50%; text-align: left;">
                                <asp:TextBox ID="TextBox3" runat="server" Width="100%" Height="25px"></asp:TextBox>
                            </td>
                            <td style="width: 50%">
                                <img alt="" src="CheckCode.aspx" style="width: 150px; height: 25px" /></td>
                        </tr>
                    </table>
                </td>
             
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" />
                </td>
             
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

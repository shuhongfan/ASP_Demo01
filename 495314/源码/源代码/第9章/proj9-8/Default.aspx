<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Web Service生成注册码</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 400px;">
            <tr>
                <td style="width: 200px; text-align: right;">您的计算机名称：</td>
                <td style="width: 200px">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">您的网卡序列号：</td>
                <td style="width: 200px">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  style="width: 200px; text-align: center;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="生成注册码" />
                </td>
                <td style="width: 200px" >
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">请输入注册码：</td>
                <td style="width: 200px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width:100%;">
                        <tr>
                            <td style="width: 100px; text-align: center">
                                <asp:TextBox ID="TextBox1" runat="server" Width="50px"></asp:TextBox>
                            </td>
                            <td style="width: 100px; text-align: center">
                                <asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>
                            </td>
                            <td style="width: 100px; text-align: center">
                                <asp:TextBox ID="TextBox3" runat="server" Width="50px"></asp:TextBox>
                            </td>
                            <td style="width: 100px; text-align: center">
                                <asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="重置" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

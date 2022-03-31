<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网页软键盘</title>
    <link href="css/keypad.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.1.3.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.keypad.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#Password1').keypad({ prompt: '', keypadOnly: false, layout: $.keypad.qwertyLayout });
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 300px;">
            <tr>
                <td style="width: 150px; text-align: right">用户名：</td>
                <td style="text-align: left; width: 150px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px; text-align: right">密码：</td>
                <td style="text-align: left; width: 150px">
                    <input id="Password1" type="password" name="pwd"/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

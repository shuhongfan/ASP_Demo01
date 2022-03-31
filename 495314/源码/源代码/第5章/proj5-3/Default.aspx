<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>使用ExecuteNonQuery方法更新数据</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 500px;">
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Width="480px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right;">
                    <asp:Label ID="Label1" runat="server" Text="增加工资值："></asp:Label>
                </td>
                <td style="width: 70%; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="加工资" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>使用DataAdapter对象添加数据</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width: 500px;">
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Width="480px" Caption="职工信息表">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: right;">
                    <asp:Label ID="Label1" runat="server" Text="工号："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td style="width: 50%; text-align: left;">
                    <asp:Label ID="Label4" runat="server" Text="职称："></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: right;">
                    <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td style="width: 50%; text-align: left;">
                    <asp:Label ID="Label5" runat="server" Text="工资："></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: right;">
                    <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td style="width: 50%; text-align: center;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

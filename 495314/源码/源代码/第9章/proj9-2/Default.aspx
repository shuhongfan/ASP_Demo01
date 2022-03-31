<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Web Service实现数据添加</title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 500px;">
            <tr>
                <td class="auto-style1" colspan="2" style="text-align: center; font-size: x-large; font-weight: bolder; background-color: #C0C0C0;">利用Web Service实现数据添加</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 250px;">工号：</td>
                <td style="width: 250px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 250px;">姓名：</td>
                <td style="width: 250px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 250px;">性别：</td>
                <td style="width: 250px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 250px;">职称：</td>
                <td style="width: 250px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 250px;">工资：</td>
                <td style="width: 250px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="重置" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="9pt" HorizontalAlign="Center" Width="500px">
                        <Columns>
                            <asp:BoundField DataField="Number" HeaderText="工号" />
                            <asp:BoundField DataField="Name" HeaderText="姓名" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" />
                            <asp:BoundField DataField="Title" HeaderText="职称" />
                            <asp:BoundField DataField="Salary" HeaderText="工资" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

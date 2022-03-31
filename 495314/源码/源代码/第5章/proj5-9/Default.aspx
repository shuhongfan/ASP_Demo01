<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>批量删除数据</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 500px;">
            <tr>
                <td style="text-align: center">批量删除数据</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" Width="500px">
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
            <tr>
                <td style="text-align: center">将职称为:<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>教授</asp:ListItem>
                    <asp:ListItem>副教授</asp:ListItem>
                    <asp:ListItem>讲师</asp:ListItem>
                    <asp:ListItem>助教</asp:ListItem>
                    </asp:DropDownList>
                    的记录&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" Width="76px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

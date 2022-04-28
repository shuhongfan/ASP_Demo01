<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy7-3.aspx.cs" Inherits="sy7_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table border="1">
                        <tr>
                            <td rowspan="4" style="width: 150px; vertical-align: middle; text-align: center;">
                                <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#Eval("photo") %>'/>
                            </td>
                            <td style="width: 350px">用户ID:<asp:Label ID="Label1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 350px">帖子内容：</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="350px" Text='<%#Eval("contents") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">发帖时间：<asp:Label ID="Label2" runat="server" Text='<%#Eval("postTime") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <div>
                当前页码为：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                总页码为：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">第一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">上一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">下一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">最后一页</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>

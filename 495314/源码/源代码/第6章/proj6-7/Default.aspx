<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DataList控件实现删除功能</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand">
            <HeaderTemplate>
                <div style="width: 500px; background-color: #808080; font-size: large; text-align: center;">
                    评论</div>
            </HeaderTemplate>
            <ItemTemplate>
                <table style="width: 500px;" border="1">
                    <tr>
                        <td style="width: 100px; text-align: right;">发表人:</td>
                        <td  style="text-align: left">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("commentName") %>' ForeColor="Red"></asp:Label>
                        </td>
                        <td style="width: 100px; text-align: right">&nbsp;</td>
                        <td style="width: 150px; text-align: left">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" OnClientClick="return confirm('确认删除吗?');">删除评论</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right;">评论主题:</td>
                        <td  style="text-align: left">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("topic") %>'></asp:Label>
                        </td>
                        <td style="width: 100px; text-align: right">评论时间:</td>
                        <td style="width: 150px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("commentTime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: right;">评论内容:</td>
                        <td  colspan="3" style="text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine"  Text='<%# Eval("contents") %>' Width="370px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="background-color: #C0C0C0;">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>

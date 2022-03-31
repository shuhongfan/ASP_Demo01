<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>更新指定的数据</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 500px;">
            <tr>
                <td colspan="2" style="text-align: center">更新指定的数据</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="500px">
                        <Columns>
                            <asp:BoundField DataField="number" HeaderText="商品编号" />
                            <asp:BoundField DataField="name" HeaderText="商品名称" />
                            <asp:BoundField DataField="count" HeaderText="商品数量" />
                            <asp:BoundField DataField="price" HeaderText="商品单价" />
                            <asp:HyperLinkField DataNavigateUrlFields="number" DataNavigateUrlFormatString="Default.aspx?number={0}" HeaderText="更新" Text="更新" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 40%;">商品名称：</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 40%;">商品数量：</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 40%;">商品单价：</td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="更新" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

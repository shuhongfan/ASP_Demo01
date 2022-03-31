<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品详细信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 520px;">
            <tr>
                <td colspan="3" style="text-align: center">商品详细信息</td>
            </tr>
            <tr>
                <td rowspan="6" style="width: 200px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" Height="160px" Width="136px"/>
                </td>
                <td style="width: 120px; text-align: right;">商品ID：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: right;">商品名称：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: right;">商品类别：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: right;">所属仓库：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: right;">商品价格：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; text-align: right;">进货日期：</td>
                <td style="width: 200px; text-align: left;">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">商品介绍：</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Height="50px" TextMode="MultiLine" Width="490px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

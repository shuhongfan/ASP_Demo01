<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>读取图片名称并显示图片</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 400px;">
            <tr>
                <td colspan="2" style="text-align: center">读取图片名称并显示图片</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 200px;">选择图片名称：</td>
                <td style="text-align: left; width: 200px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 200px;">读取图片名称：</td>
                <td style="text-align: left; width: 200px;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Width="300" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

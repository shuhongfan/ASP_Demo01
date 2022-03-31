<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>将上传图片存储到数据库中</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 400px;">
            <tr>
                <td colspan="2" style="text-align: center">将上传图片存储到数据库中</td>
            </tr>
            <tr>
                <td style="width: 150px; text-align: right;">用户名：</td>
                <td style="text-align: left; width: 250px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px; text-align: right;">选择图片：</td>
                <td style="text-align: left; width: 250px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" Width="400px">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="编号" />
                            <asp:BoundField DataField="name" HeaderText="用户名" />
                            <asp:BoundField DataField="picname" HeaderText="图片名称" />
                            <asp:BoundField DataField="sendtime" HeaderText="上传时间" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

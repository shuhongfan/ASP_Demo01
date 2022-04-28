<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy7-4.aspx.cs" Inherits="sy7_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>商品详细信息：</HeaderTemplate>
                <ItemTemplate>
                    <table  border="1">
                        <tr>
                            <td style="width: 95px"> 商品ID:</td>   
                            <td style="width: 120px">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("GoodsID") %>'></asp:Label></td>
                            <td style="width: 95px"> 商品名称:</td>             
                            <td style="width: 120px">
                                <asp:Label ID="Label2" runat="server"  Text='<%# Eval("GoodsName") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 95px;"> 商品类别:</td>
                            <td style="width: 120px;">
                                <asp:Label ID="Label3" runat="server"  Text='<%#Eval("GoodsTypeName") %>'></asp:Label></td>
                            <td style="width: 95px;">商品价格:</td>
                            <td style="width: 120px;">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("GoodsPrice") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 95px"> 商品图片:</td>
                            <td colspan="3" style="text-align:center">
                                <asp:Image ID="Image1" runat="server"  Width="150px"  ImageUrl='<%#Eval("GoodsPhoto","~/images/{0}").ToString().Trim()%>'></asp:Image></td>
                        </tr>
                        <tr> <td colspan="4" style="background-color: #C0C0C0"></td></tr>
                    </table>
                </ItemTemplate>
                <FooterTemplate>您正在查看的是商品信息！</FooterTemplate>
            </asp:Repeater>
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

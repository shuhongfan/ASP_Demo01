<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>产品详细信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" Width="300px">
            <FooterTemplate>
                <div style="text-align: center; width: 300px; background-color: #C0C0C0">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">返回</asp:HyperLink>
                </div>
            </FooterTemplate>
            <HeaderTemplate>
                <div style="text-align: center; width: 300px; background-color: #C0C0C0; font-weight: bolder; color: #0000FF;">
                    产品的详细信息</div>
            </HeaderTemplate>
            <ItemTemplate>
                <table style="width:100%;" border="1">
                    <tr>
                        <td style="width: 50%">产品编号:</td>
                        <td><%#Eval("productID")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">产品名称</td>
                        <td><%#Eval("productName")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">产品价格:</td>
                        <td><%#Eval("productPrice")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">现有数量:</td>
                        <td><%#Eval("productCount")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">产品类型:</td>
                        <td><%#Eval("productType")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">生产日期:</td>
                        <td><%#Eval("productDate","{0:yyyy-MM-dd}")%></td>
                    </tr>
                    <tr>
                        <td style="width: 50%">生产地点:</td>
                        <td><%#Eval("productArea")%></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>

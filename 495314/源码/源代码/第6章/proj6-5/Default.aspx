<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品基本信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="GoodsID" HeaderText="商品ID" />
                <asp:BoundField DataField="GoodsTypeName" HeaderText="商品类别" />
                <asp:BoundField DataField="StoreName" HeaderText="所属仓库" />
                <asp:BoundField DataField="GoodsName" HeaderText="商品名称" />
                <asp:HyperLinkField DataNavigateUrlFields="GoodsID" DataNavigateUrlFormatString="Info.aspx?GoodsID={0}" HeaderText="详细信息" NavigateUrl="~/Info.aspx" Text="详细信息" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

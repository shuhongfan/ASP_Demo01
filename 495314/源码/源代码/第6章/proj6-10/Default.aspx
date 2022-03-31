<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>产品信息一览表</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="产品信息一览表" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="productName" HeaderText="产品名称" />
                <asp:BoundField DataField="productType" HeaderText="产品类型" />
                <asp:HyperLinkField DataNavigateUrlFields="productID" DataNavigateUrlFormatString="~/Detail.aspx?productID={0} " HeaderText="详细信息" Text="查看" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>

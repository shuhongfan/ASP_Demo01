<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy5-4.aspx.cs" Inherits="sy5_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapDataSource SiteMapProvider="web2" ID="SiteMapDataSource1" runat="server" />
            <asp:TreeView DataSourceID="SiteMapDataSource1" ID="TreeView1" runat="server"></asp:TreeView>
        </div>
    </form>
</body>
</html>

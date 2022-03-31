<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎界面</title>
    <style type="text/css">
        .kk {
            font-family: 隶书;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="kk"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="kk"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="欢迎您登录我的网站!" CssClass="kk"></asp:Label>
    
    </div>
    </form>
</body>
</html>

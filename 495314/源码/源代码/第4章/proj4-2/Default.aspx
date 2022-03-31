<%@ Page StylesheetTheme="Common" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>动态加载主题</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>请选择主题</asp:ListItem>
            <asp:ListItem>默认主题</asp:ListItem>
            <asp:ListItem>红色主题</asp:ListItem>
            <asp:ListItem>蓝色主题</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </div>
    </form>
</body>
</html>

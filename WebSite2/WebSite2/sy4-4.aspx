<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy4-4.aspx.cs" Inherits="sy4_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:40%;float:left;text-align:center;">
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem>IntelCPU</asp:ListItem>
                <asp:ListItem>ADMCPU</asp:ListItem>
                <asp:ListItem>华硕主板</asp:ListItem>
                <asp:ListItem>技嘉主板</asp:ListItem>
                <asp:ListItem>希捷硬盘</asp:ListItem>
                <asp:ListItem>西部数据</asp:ListItem>
            </asp:ListBox>
        </div>

        <div style="width:20%;float:left;text-align:center;">
            <asp:Button ID="Button1" runat="server" Text=">>" />
            <asp:Button ID="Button2" runat="server" Text="<<" />     
        </div>

        <div style="width:40%;float:right;text-align:center;">
            <asp:ListBox ID="ListBox2" runat="server" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged"></asp:ListBox>
        </div>
    </form>
</body>
</html>

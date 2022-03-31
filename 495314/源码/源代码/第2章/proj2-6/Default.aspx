<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>装机清单</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 2px solid #000000; padding: 6px; width: 400px;background-color: #C0C0C0; height: 80px;">
        <div style="width: 40%; float: left">
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>IntelCPU</asp:ListItem>
                <asp:ListItem>AMD CPU</asp:ListItem>
                <asp:ListItem>华硕主板</asp:ListItem>
                <asp:ListItem>技嘉主板</asp:ListItem>
                <asp:ListItem>希捷硬盘</asp:ListItem>
                <asp:ListItem>西部数据</asp:ListItem>
            </asp:ListBox>
        </div>
        <div style="float: left; width: 20%; text-align:left">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&gt;&gt;"/> 
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="&lt;&lt;"/><br />
        </div>
        <div style="float: left; width: 40%">
            <asp:ListBox ID="ListBox2" runat="server" Width="100px"></asp:ListBox>
        </div>
    </div>
    </form>
</body>
</html>

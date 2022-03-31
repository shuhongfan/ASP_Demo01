<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简单四则运算计算器</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; width: 330px; background-color: #C0C0C0">
        简单四则运算计算器<br /></div>
       <br /><div style="width: 3300px"> 请输入计算的两个数字：<br /><br />
        <asp:TextBox ID="TextBox1" runat="server" Width="70px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>+</asp:ListItem>
            <asp:ListItem>-</asp:ListItem>
            <asp:ListItem>×</asp:ListItem>
            <asp:ListItem>÷</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="=" 
            Width="36px" onclick="Button1_Click" />
        <asp:TextBox ID="TextBox3" runat="server" Width="70px"></asp:TextBox>
    </div>
    </form>
</body>
</html>

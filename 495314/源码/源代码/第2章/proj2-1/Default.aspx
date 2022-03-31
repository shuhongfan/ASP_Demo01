<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简易四则运算器</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        =<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" CommandName="Add" OnCommand="Button1_Command" Text="+" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CommandName="Subtract" OnCommand="Button1_Command" Text="-" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CommandName="Multiply" OnCommand="Button1_Command" Text="×" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CommandName="Divide" OnCommand="Button1_Command" Text="÷" />
    
    </div>
    </form>
</body>
</html>

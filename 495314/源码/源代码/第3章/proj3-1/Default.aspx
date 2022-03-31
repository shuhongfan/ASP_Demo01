<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Init和Load事件的比较</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Init事件的运行效果&nbsp;&nbsp;&nbsp; Load事件的运行效果<br />
        <asp:ListBox ID="ListBox1" runat="server" Width="176px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" Width="176px"></asp:ListBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="引起回发" />
    
    </div>
    </form>
</body>
</html>

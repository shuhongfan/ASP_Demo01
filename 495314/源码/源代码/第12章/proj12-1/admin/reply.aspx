<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reply.aspx.cs" Inherits="admin_reply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:white url(../images/bg.png) repeat-x;">
    <form id="form1" runat="server">
    <div class="gbook_main">   
        回复留言:<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine" 
            Width="100%"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="回复留言" onclick="Button1_Click" />    
    </div>
    </form>
</body>
</html>

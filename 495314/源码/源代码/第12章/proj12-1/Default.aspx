<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>选择留言板</title>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:white url(images/bg.png) repeat-x;">
    <form id="form1" runat="server">
    <div class="gbook_main_title"></div>
     <div class="gbook_banner">
      <img alt="" src="../images/groups.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;
      <img alt="" src="../images/gift.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;
      <img alt="" src="images/list.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>&nbsp;    
     </div>
    
        <div class="gbook_main">   
        选择留言板:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="classname" DataValueField="id">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查看留言" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" 
            SelectCommand="SELECT * FROM [gbook_class]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

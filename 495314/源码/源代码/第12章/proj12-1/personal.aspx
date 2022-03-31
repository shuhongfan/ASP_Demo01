<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:white url(images/bg.png) repeat-x;">
    <form id="form1" runat="server">
    <div class="gbook_main_title"></div>
    <div class="gbook_banner">
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
    </div> 
    <div class="gbook_main">


   
    个人信息：

     
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        <br />
        <br />
        用户性别：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        QQ:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        个性签名：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        用户备注：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        留言数：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">修改资料</asp:LinkButton>

    </div>
    <div class="copyright">Copyright 2015-2017 惠源公司</div>
    </form>
</body>
</html>

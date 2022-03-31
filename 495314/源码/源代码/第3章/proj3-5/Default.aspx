<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>使用TransmitFile方法下载文件</title>
</head>
<body>
    <form id="form1" runat="server">
    <div> 
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">下载成绩册</asp:LinkButton> 
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Cookie控制投票次数</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="我要投票" /> 
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy4-2-2.aspx.cs" Inherits="sy4_2_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=Request["username"] %>
        </div>
    </form>
</body>
</html>

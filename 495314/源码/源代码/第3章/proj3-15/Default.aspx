<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>统计网站总访问量</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <table style="width:100%;">
            <tr>
                <td style="text-align: center">统计网站总访问量</td>
            </tr>
            <tr>
                <td style="text-align: center">您是第<%=Application["counter"]%>位访问者</td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>

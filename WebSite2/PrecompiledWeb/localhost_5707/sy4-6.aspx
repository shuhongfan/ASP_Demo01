<%@ page language="C#" autoeventwireup="true" inherits="sy4_6, App_Web_sfdh0elm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%">
                <tr>
                    <td style="text-align: center">统计网站的总访问量</td>
                </tr>
                <tr>
                    <td style="text-align: center"><%=Application["counter"]%></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

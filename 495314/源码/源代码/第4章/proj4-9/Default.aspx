<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Table布局示例</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <table style="width:100%; border-collapse: collapse;">
            <tr style="background-color: #0000FF; height: 100px">
                <td colspan="3">网页头部</td>
            </tr>
            <tr style="height: 250px">
                <td style="background-color: #800080; width: 20%;">网页主体左边</td>
                <td style="background-color: #FFFF00; width: 50%;">网页主体中间</td>
                <td style="background-color: #008000; width: 30%;">网页主体右边</td>
            </tr>
            <tr style="background-color: #808080; height: 80px">
                <td colspan="3">网页底部</td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>

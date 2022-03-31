<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图片放大镜</title>
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/jqzoom.css" type="text/css"/>  
    <script type="text/javascript">
        $(function () {
            $(".jqzoom").jqzoom();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content" style="margin-top:1px;margin-left:10px; height: 230px; width: 600px;">
       <a href="images/rose1.jpg" class="jqzoom" style="" title="红玫瑰">
       <img src="images/rose.jpg"  title="hua" style="border: 1px solid #666;"/>
       </a>
    </div>
    </form>
</body>
</html>

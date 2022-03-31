<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>广告图片轮显</title>
<script type="text/javascript" src="js/jquery-1.2.3.pack.js"></script>
<script type="text/javascript" src="js/jquery.myslide.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $.init_slide('imgstore', 'showher', 1, 0, 0, 1, 5000, 1);
    });
</script>
<style>
.link_nor{
background-color: #333333;
font: normal 76% "Arial", "Lucida Grande",Verdana,  Sans-Serif;
border: 2px solid #808000;
padding:0px 4px 0px 4px;
text-align:center;
color:white
}
img{
border: 10px solid #663300;
background-color: black
}
.opa{
color:white;
padding:10px 20px 0px 20px;
position: absolute;
z-index: 101;
background-color: #FFA928;
opacity:0.5;
filter: alpha(opacity=50);
filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=100,FinishOpacity=50, Style=3, StartX=0, FinishX=100, StartY=0,FinishY=16); 
-moz-opacity: 0.5;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="showher" style="text-align: left"></div>
    <div id="imgstore" style="display: none">  
        <img  src="images/01.jpg" title="苍山云海" />
        <img  src="images/02.jpg" title="海天一色" />
        <img  src="images/03.jpg" title="高山之巅" />
        <img  src="images/04.jpg" title="海之一角" />
    </div>
    </form>
</body>
</html>

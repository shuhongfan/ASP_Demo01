<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>使用DIV+CSS布局</title>
    <style type="text/css">
        .top {
            background-color: #0000FF;
            height: 100px;
            width: 100%;       
        }
         .content {
            height: 250px;
            width: 100%;
        }
        .left {
            background-color: #800080;
            width: 20%;
            height: 250px;
            float:left;       
        }
        .middle {
            background-color: #FFFF00;
            width: 50%;
            height: 250px;
           float:left;       
        }
        .right {
            background-color: #008000;
            width:29.9%;
            height: 250px;
           float:right;         
        }
        .bottom {
            background-color: #808080;
            width: 100%;
            height: 80px;       
        }    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="top">网页头部</div>
    <div class="content">
        <div class="left">网页主体左边</div>
        <div class="middle">网页主体中间</div>
        <div class="right">网页主体右边</div>
    </div>
    <div class="bottom">网页底部</div>
    </form>
</body>
</html>

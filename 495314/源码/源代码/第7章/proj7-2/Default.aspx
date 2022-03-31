<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
    <title>密码强度检测</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>  
<script type="text/javascript" src="js/psw.js"></script>
<script type="text/javascript">
    $(function () {
        $('#Password1').pstrength();
    });
</script>
<style type="text/css">
input {
	width:180px;
	height:22px;
	line-height:12px;
	padding:4px 0px;
	border: #cfcfcf 1px solid;
	color: #585858;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
       请输入密码： <input id="Password1" type="password" /></div>
    </form>
</body>
</html>

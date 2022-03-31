<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AJAX实现搜索框智能提示</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" TargetControlID="TextBox1"></asp:TextBox>
        <br />
        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="100" MinimumPrefixLength="1" ServicePath="~/WebService.asmx" ServiceMethod="GetProvinceList" TargetControlID="TextBox1"></cc1:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy4-5.aspx.cs" Inherits="sy4_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <hr />
            文件上传路径：
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" style="height: 21px" />
        </div>
    </form>
</body>
</html>

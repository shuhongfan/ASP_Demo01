<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上传文件</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: 10px; margin: 10px; border: 1px solid #000000; width: 410px">
        <div style="background-color: #C0C0C0">
            <asp:Label ID="Label1" runat="server" Text="Label" BorderColor="Silver"></asp:Label></div>
        <hr />
        <br />
        文件上传路径：<asp:FileUpload ID="FileUpload1" runat="server" />

        <br />
        <hr />
        <div style="padding: 10px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
        </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy7-6.aspx.cs" Inherits="sy7_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>

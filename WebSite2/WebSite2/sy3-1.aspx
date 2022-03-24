<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy3-1.aspx.cs" Inherits="sy4_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="num1" runat="server"></asp:TextBox>
            <asp:Label ID="computLabel" runat="server"></asp:Label>
            <asp:TextBox ID="num2" runat="server"></asp:TextBox>
            =
            <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>

            <div aria-orientation="vertical">
                <asp:Button CommandName="plus" runat="server" Text="+" OnCommand="Command" />
                <asp:Button CommandName="subtract" runat="server" Text="-" OnCommand="Command"  />
                <asp:Button CommandName="multiply" runat="server" Text="*" OnCommand="Command"  />
                <asp:Button CommandName="divide" runat="server" Text="/" OnCommand="Command"  />
            </div>
            
        </div>
    </form>
</body>
</html>

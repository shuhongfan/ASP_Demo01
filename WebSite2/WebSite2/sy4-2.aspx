<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy4-2.aspx.cs" Inherits="_4_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>多选题</h1>
            <asp:Label ID="Label1" runat="server" Text="1.下列是TextBox控件的TextMode属性的值有哪些？"></asp:Label>

            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>MultiLine</asp:ListItem>
                <asp:ListItem>Password</asp:ListItem>
                <asp:ListItem>Wrap</asp:ListItem>
            </asp:CheckBoxList>

            <asp:Button ID="Button1" runat="server" Text="答题" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="下一题" />
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

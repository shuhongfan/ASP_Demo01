<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>多选题</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width:100%;">
            <tr><td style="text-align: center; background-color: #C0C0C0">多选题</td> </tr>
            <tr><td class="auto-style1">1.下列是TextBox控件的TextMode属性的值的有哪些?</td> </tr>
            <tr><td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellSpacing="6" RepeatDirection="Horizontal">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Password</asp:ListItem>
                    <asp:ListItem>Wrap</asp:ListItem>
                    <asp:ListItem>MultiLine</asp:ListItem>
                </asp:CheckBoxList>
                </td></tr><tr><td style="text-align: center; background-color: #C0C0C0">
                    <asp:Button ID="Button1" runat="server" Text="答题" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="下一题" />
                </td></tr></table>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>

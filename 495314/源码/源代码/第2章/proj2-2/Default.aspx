<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简易文本编辑器</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/bold.jpg" OnClick="ImageButton1_Click" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/italic.jpg" OnClick="ImageButton2_Click" />
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/underline.jpg" OnClick="ImageButton3_Click" />
&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/left.jpg" OnClick="ImageButton4_Click" />
&nbsp;<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/center.jpg" OnClick="ImageButton5_Click" />
&nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/right.jpg" OnClick="ImageButton6_Click" style="height: 20px" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="157px" TextMode="MultiLine" Width="237px"></asp:TextBox>
        <br />
        <asp:Literal ID="Literal1" runat="server" Mode="PassThrough"></asp:Literal>
    
    </div>
    </form>
</body>
</html>

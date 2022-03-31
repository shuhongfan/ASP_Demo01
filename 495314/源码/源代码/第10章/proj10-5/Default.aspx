<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AJAX实现倒计时</title>
</head>
<body>
    <form id="form1" runat="server"> 
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
    <div style="text-align: center; width: 500px; font-family: 黑体; font-size: xx-large; color: #0000FF; background-color: #C0C0C0;"> 在线考试系统</div>
        <div style="width: 500px"> 
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>
                   <br /> <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Small" ForeColor="Red"></asp:Label><br /><br />
                     ASP.NET在线考试题（略）         
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seebook.aspx.cs" Inherits="seebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:white url(images/bg.png) repeat-x;">
    <form id="form1" runat="server">
    <div class="gbook_main_title"></div>
    <div class="gbook_banner">
    <img alt="" src="images/groups.png" style="width: 16px; height: 16px" /> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;
<img alt="" src="images/gift.png" style="width: 16px; height: 16px" /> 
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;
<img alt="" src="images/logout.png" style="width: 16px; height: 16px" /> 
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>&nbsp;    
    </div>
    <div class="gbook_main">


    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        Width="100%">
        <ItemTemplate>
        <table class="g_table">
            <tr>
                <td><div class="g_title">
                    你于<asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                    进行留言:&nbsp;</div></td>
            </tr>
            <tr>
                <td><div class="g_content">
                    <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("contents") %>' />
                </td>
            </tr>
            <tr>
                <td>
                <div class="g_reply">
                    <asp:Label ID="repcontentLabel" runat="server" 
                        Text='<%# Eval("repcontent") %>' 
                        style="font-size: xx-small; color: #FF0000" />
                        </div>
                </td>
            </tr>
        </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    当前页码为：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;总页码为：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">第一页</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">上一页</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">下一页</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">最后一页</asp:LinkButton>
    </div>
    <div class="copyright">Copyright 2015-2017 惠源公司</div>
    </form>
</body>
</html>

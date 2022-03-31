<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GbookList.ascx.cs" Inherits="control_GbookList" %>
<link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
<asp:DataList ID="DataList1" runat="server" DataKeyField="id"  Width="100%" >
    <ItemTemplate>
       <table class="g_table">
            <tr>
                <td><div class="g_title">
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' 
                        style="font-weight: 700" />
                    于<asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                    进行留言:&nbsp;&nbsp;&nbsp;<span style="font-size:12px"><a href="reply.aspx?cid=<%# Eval("classid") %>&id=<%# Eval("id") %>">回复</a> <a href="delete.aspx?cid=<%# Eval("classid") %>&id=<%# Eval("id") %>">删除</a></span></div></td>
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
      
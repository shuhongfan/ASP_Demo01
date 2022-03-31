<%@ Page Title="使用FindControl方法访问母版页" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <hr style="width: 400px;" align="left" />  
    <table style="width: 400px;">
        <tr>
            <td colspan="2" style="text-align: center">用户登录</td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right;">用户名：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right;">密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
            </td>
        </tr>
    </table>
        
</asp:Content>


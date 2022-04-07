<%@ Page Title="" Language="C#" MasterPageFile="~/sy5-2.master" AutoEventWireup="true" CodeFile="sy5-2-2.aspx.cs" Inherits="sy5_2_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>用户登录</h1>
    用户名：
    <asp:TextBox ID="username" runat="server"></asp:TextBox><br/>
    密码：  
    <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
    <br/>
    <asp:Button ID="btn" runat="server" Text="登录" OnClick="btn_Click" />
</asp:Content>


<%@ Page Title="母版页的使用" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                        母版页的使用与普通的.aspx页面类似，可以在其中放置任何的HTML控件、Web服务器控件或图形等。不同的是： <br /><br />1. 母版页将普通页面的@Page指令替换成了@Master指令；<br /><br /> 2. 母版页的扩展名为.master，因此不能被浏览器直接查看； <br /><br />3. 母版页中包含若干个ContentPlaceHolder控件，是预留出来的显示内容页面的区域； <br /><br />4. 母版页必须在被内容页引用后才能进行显示。 
                    </p>
</asp:Content>



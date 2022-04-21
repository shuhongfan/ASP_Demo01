<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy6-2.aspx.cs" Inherits="sy6_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Number" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Number" HeaderText="Number" ReadOnly="True" SortExpression="Number" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Number], [Name], [Sex], [Title], [Salary] FROM [staff]"></asp:SqlDataSource>
            工号：<asp:TextBox ID="wno" runat="server"></asp:TextBox> <br />
            职称：<asp:TextBox ID="wname" runat="server"></asp:TextBox><br />
            姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            工资：<asp:TextBox ID="salary" runat="server"></asp:TextBox><br />
            性别：<asp:TextBox ID="sex" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

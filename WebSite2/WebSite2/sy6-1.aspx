<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy6-1.aspx.cs" Inherits="sy6_1" %>

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
            <asp:Label ID="Label1" runat="server" Text="增加工资值:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="增加工资" OnClick="Button1_Click" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Number], [Name], [Sex], [Title], [Salary] FROM [staff]" DeleteCommand="DELETE FROM [staff] WHERE [Number] = @Number" InsertCommand="INSERT INTO [staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (@Number, @Name, @Sex, @Title, @Salary)" UpdateCommand="UPDATE [staff] SET [Name] = @Name, [Sex] = @Sex, [Title] = @Title, [Salary] = @Salary WHERE [Number] = @Number">
                <DeleteParameters>
                    <asp:Parameter Name="Number" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Number" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="Number" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

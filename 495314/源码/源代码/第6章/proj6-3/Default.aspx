<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>数据记录的编辑与删除</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Number" DataSourceID="SqlDataSource1" PageSize="3">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('确认删除吗?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Number" HeaderText="工号" ReadOnly="True" SortExpression="Number" />
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Title" HeaderText="职称" SortExpression="Title" />
                <asp:BoundField DataField="Salary" HeaderText="工资" SortExpression="Salary" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [staff] WHERE [Number] = @Number" InsertCommand="INSERT INTO [staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (@Number, @Name, @Sex, @Title, @Salary)" SelectCommand="SELECT * FROM [staff]" UpdateCommand="UPDATE [staff] SET [Name] = @Name, [Sex] = @Sex, [Title] = @Title, [Salary] = @Salary WHERE [Number] = @Number">
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

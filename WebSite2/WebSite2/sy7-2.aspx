<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy7-2.aspx.cs" Inherits="sy7_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学号" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [学号], [姓名], [性别] FROM [学生]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="学号,课程名" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                    <asp:BoundField DataField="课程名" HeaderText="课程名" ReadOnly="True" SortExpression="课程名" />
                    <asp:BoundField DataField="成绩" HeaderText="成绩" SortExpression="成绩" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [成绩] WHERE [学号] = @original_学号 AND [课程名] = @original_课程名 AND (([成绩] = @original_成绩) OR ([成绩] IS NULL AND @original_成绩 IS NULL))" InsertCommand="INSERT INTO [成绩] ([学号], [课程名], [成绩]) VALUES (@学号, @课程名, @成绩)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [学号], [课程名], [成绩] FROM [成绩] WHERE ([学号] = @学号)" UpdateCommand="UPDATE [成绩] SET [成绩] = @成绩 WHERE [学号] = @original_学号 AND [课程名] = @original_课程名 AND (([成绩] = @original_成绩) OR ([成绩] IS NULL AND @original_成绩 IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_学号" Type="String" />
                    <asp:Parameter Name="original_课程名" Type="String" />
                    <asp:Parameter Name="original_成绩" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="课程名" Type="String" />
                    <asp:Parameter Name="成绩" Type="Int16" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="学号" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="成绩" Type="Int16" />
                    <asp:Parameter Name="original_学号" Type="String" />
                    <asp:Parameter Name="original_课程名" Type="String" />
                    <asp:Parameter Name="original_成绩" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

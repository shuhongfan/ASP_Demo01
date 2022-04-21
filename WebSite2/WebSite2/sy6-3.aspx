<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy6-3.aspx.cs" Inherits="sy6_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="number" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="number" HeaderText="number" ReadOnly="True" SortExpression="number" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="count" HeaderText="count" SortExpression="count" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [shopping] WHERE [number] = @original_number AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([count] = @original_count) OR ([count] IS NULL AND @original_count IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))" InsertCommand="INSERT INTO [shopping] ([number], [name], [count], [price]) VALUES (@number, @name, @count, @price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [number], [name], [count], [price] FROM [shopping]" UpdateCommand="UPDATE [shopping] SET [name] = @name, [count] = @count, [price] = @price WHERE [number] = @original_number AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([count] = @original_count) OR ([count] IS NULL AND @original_count IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_number" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_count" Type="Int32" />
                    <asp:Parameter Name="original_price" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="number" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="count" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="count" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="original_number" Type="String" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_count" Type="Int32" />
                    <asp:Parameter Name="original_price" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy7-5.aspx.cs" Inherits="sy7_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Number" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="NumberLabel1" runat="server" Text='<%# Eval("Number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未返回数据。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        </td>
                        <td>
                            <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">Number</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">Sex</th>
                                        <th runat="server">Salary</th>
                                        <th runat="server">Title</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [staff] WHERE [Number] = @original_Number AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Sex] = @original_Sex) OR ([Sex] IS NULL AND @original_Sex IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))" InsertCommand="INSERT INTO [staff] ([Number], [Name], [Sex], [Salary], [Title]) VALUES (@Number, @Name, @Sex, @Salary, @Title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Number], [Name], [Sex], [Salary], [Title] FROM [staff]" UpdateCommand="UPDATE [staff] SET [Name] = @Name, [Sex] = @Sex, [Salary] = @Salary, [Title] = @Title WHERE [Number] = @original_Number AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Sex] = @original_Sex) OR ([Sex] IS NULL AND @original_Sex IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Number" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Sex" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                    <asp:Parameter Name="original_Title" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Number" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="Title" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="original_Number" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Sex" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                    <asp:Parameter Name="original_Title" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

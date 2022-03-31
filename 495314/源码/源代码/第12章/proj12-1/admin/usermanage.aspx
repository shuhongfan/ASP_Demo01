<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usermanage.aspx.cs" Inherits="admin_usermanage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="gbook_main_title"></div>
    <div class="gbook_banner">
      <img alt="" src="../images/groups.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;
      <img alt="" src="../images/logout.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;
    </div> 
        <div class="gbook_main">
        <div class="left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="600px">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('确认删除吗？');"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                    <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" />
                    <asp:BoundField DataField="QQ" HeaderText="QQ" SortExpression="QQ" />
                    <asp:BoundField DataField="information" HeaderText="个性签名" SortExpression="information" />
                    <asp:BoundField DataField="others" HeaderText="备注" SortExpression="others" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" DeleteCommand="DELETE FROM [register] WHERE [id] = @id" InsertCommand="INSERT INTO [register] ([username], [password], [sex], [QQ], [information], [others]) VALUES (@username, @password, @sex, @QQ, @information, @others)" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [username] = @username, [password] = @password, [sex] = @sex, [QQ] = @QQ, [information] = @information, [others] = @others WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="QQ" Type="String" />
                    <asp:Parameter Name="information" Type="String" />
                    <asp:Parameter Name="others" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="QQ" Type="String" />
                    <asp:Parameter Name="information" Type="String" />
                    <asp:Parameter Name="others" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>

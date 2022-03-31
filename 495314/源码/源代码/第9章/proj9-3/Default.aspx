<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>利用Web Service实现数据删除</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 500px; font-size: x-large; font-weight: bolder; text-align: center;"> 利用Web Service实现数据删除</div>
    <div style="width: 500px">
      
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="9pt" HorizontalAlign="Center" Width="500px" DataKeyNames="Number" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:CommandField HeaderText="删除数据" ShowDeleteButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:BoundField DataField="Number" HeaderText="工号" />
                            <asp:BoundField DataField="Name" HeaderText="姓名" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" />
                            <asp:BoundField DataField="Title" HeaderText="职称" />
                            <asp:BoundField DataField="Salary" HeaderText="工资" />
                        </Columns>
                    </asp:GridView>

    </div>
    </form>
</body>
</html>

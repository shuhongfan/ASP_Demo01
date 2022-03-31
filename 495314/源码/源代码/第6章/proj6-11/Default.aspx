<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>将职称类型绑定到DropDownList控件</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        请选择职称:<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="450px">
            <Columns>
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

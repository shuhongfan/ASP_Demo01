<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modi.aspx.cs" Inherits="modi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
        <div class="gbook_main_title"></div>
       
        
     <div class="gbook_banner">
      <img alt="" src="images/groups.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;
      <img alt="" src="images/logout.png" style="width: 16px; height: 16px" /> 
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>&nbsp;
    </div> 
     <div class="gbook_main">
     <table class="style1">
            <tr>
                <td colspan="2" class="auto-style1">
                    请修改个人信息:</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    用户名:</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
              
            </tr>
           
            <tr>
                <td>
                    密码：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
              
            </tr>
           
            <tr>
                <td>
                    修改密码：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
              
            </tr>
           
            <tr>
                <td>
                    再输一次：</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox6" ErrorMessage="两次输入密码不一致！" ForeColor="Red"></asp:CompareValidator>
                </td>
              
            </tr>
            <tr>
                <td>
                    性别:</td>
                <td>
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="男">男</asp:ListItem>
                        <asp:ListItem Value="女">女</asp:ListItem>
                        <asp:ListItem Value="保密">保密</asp:ListItem>        
                    </asp:DropDownList>
                       </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
               
            </tr>
           
            <tr>
                <td>
                    QQ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td>
                    个性签名:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    备注:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交修改" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

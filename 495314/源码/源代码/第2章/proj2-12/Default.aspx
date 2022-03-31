<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>验证控件综合案例</title>
    <style type="text/css">
        .auto-style1 {
            width: 20%;
            height: 27px;
        }
        .auto-style2 {
            width: 40%;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<table style="width: 600px;">
            <tr>
                <td colspan="3" style="text-align: left;">请输入以下报名信息：</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 20%;">姓名：</td>
                <td style="text-align: left; width: 40%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="text-align: left; width: 40%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="姓名不能为空！" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 20%;">密码：</td>
                <td style="text-align: left; width: 40%">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="text-align: left; width: 40%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空！" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style1">再输密码：</td>
                <td style="text-align: left; " class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="text-align: left; " class="auto-style2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次输入的密码不一致！" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 20%;">年龄：</td>
                <td style="text-align: left; width: 40%">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td style="text-align: left; width: 40%">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="20-30之间才能报名！" Font-Size="Smaller" ForeColor="Red" MaximumValue="30" MinimumValue="20" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="年龄不能为空！" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 20%;">E-mail：</td>
                <td style="text-align: left; width: 40%">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td style="text-align: left; width: 40%">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="请输入正确的E-mail格式！" Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left;">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="验证结果：" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>

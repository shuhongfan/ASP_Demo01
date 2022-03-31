<%@ page language="C#" autoeventwireup="true" inherits="sy4_7, App_Web_sfdh0elm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                ControlToValidate="TextBox1"
                Display="Static"
                ForeColor="red"
                runat="server" 
                ErrorMessage="* 姓名不能为空">* 必须输入姓名</asp:RequiredFieldValidator>
            <br />

            密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>  
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                ControlToValidate="TextBox2"
                Display="Static"
                ForeColor="red"
                runat="server" 
                ErrorMessage="* 密码不能为空">* 必须输入密码</asp:RequiredFieldValidator>
            <br />
            
            再输入密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ControlToValidate="TextBox3"
                ID="RequiredFieldValidator3" 
                ForeColor="red"
                runat="server" 
                Display="Dynamic"
                ErrorMessage="* 必须再次输入密码"></asp:RequiredFieldValidator>
            <asp:CompareValidator 
                ControlToCompare="TextBox2"
                ControlToValidate="TextBox3"
                ForeColor="red"
                ID="CompareValidator1" 
                runat="server" 
                ErrorMessage="* 两次输入的密码不一致！"></asp:CompareValidator>
            <br />

            年龄：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ControlToValidate="TextBox4"
                ID="RequiredFieldValidator4" 
                runat="server" 
                ForeColor="red"
                ErrorMessage="* 必须输入年龄" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="RangeValidator1" 
                ControlToValidate="TextBox4"
                runat="server" 
                ForeColor="red"
                MaximumValue="30"
                MinimumValue="20"
                Type="Integer"
                ErrorMessage="* 20-30之间才能报名！"></asp:RangeValidator>
            <br />

            E-mail：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator 
                ControlToValidate="TextBox5"
                ForeColor="red"
                ID="RequiredFieldValidator5" 
                runat="server" 
                ErrorMessage="* 必须输入E-mail" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ControlToValidate="TextBox5"
                ForeColor="red"
                ValidationExpression="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$"
                ID="RegularExpressionValidator1" 
                runat="server" 
                ErrorMessage="* 请输入正确的E-mail格式"></asp:RegularExpressionValidator>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
        <hr />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <hr />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>

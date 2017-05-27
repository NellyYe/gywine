<%@ Page Language="C#" AutoEventWireup="true" CodeFile="注册页面.aspx.cs" Inherits="注册页面" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
            <tr>
        <td width="600" height="126" align="center"><img height="70" width="235" alt="注册登陆" src="images/logo.png" /></td>
            </tr>
        </table>
             <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
             <tr>
           <td><img height="37" width="551" alt="背景1" src="images/dlu_1.png" /><br />
               <br />
               <asp:Label ID="Label1" runat="server" Text="用户名：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                   ControlToValidate="tb_name" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
               <br />
               <br />
               <asp:Label ID="Label2" runat="server" Text="密码：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
               <br />
               <br />
               <asp:Label ID="Label3" runat="server" Text="重复密码：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_password2" runat="server" TextMode="Password"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
                   ControlToCompare="tb_password" ControlToValidate="tb_password2" 
                   ErrorMessage="密码错误"></asp:CompareValidator>
               <br />
               <br />
               <asp:Label ID="Label4" runat="server" Text="qq邮箱：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_mail" runat="server" MaxLength="11" onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;"></asp:TextBox>
               @qq.com<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                   ControlToValidate="tb_mail" ErrorMessage="格式错误"></asp:RequiredFieldValidator>
               <br />
               <br />
               <asp:ImageButton ID="ImageButton1" runat="server" 
                   ImageUrl="~/images/dlu_2.png" onclick="ImageButton1_Click" />
                 <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#669999" 
                   onclick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton>
                 </td>      
             </tr>
             </table>
    </div>
    </form>
</body>
</html>

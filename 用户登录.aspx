<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="用户登录.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网站后台管理登陆</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
            <tr>
        <td width="600" height="126" align="center"><img height="70" width="235" alt="网站后台管理登录" src="images/logo.png" />&nbsp; </td>
            </tr>
        </table>
        <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
                <tr>
                    <td valign="top" width="508" background="images/Admin_Login2"  height="126">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tr>
                                <td height="20"></td>
                                <td valign="top">用户名称：</td>
                                <td height="20"></td>
                                <td>用户密码：</td>
                            </tr>
                            <tr>
                                <td height="20"></td>
                                <td valign="top"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td valign="top"><asp:textbox id="TextBox2"  runat="server"  textmode="Password"></asp:textbox></td>
                            </tr>
                        </table>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="管理员" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="会员" />
                    </td>
                    <td valign="top" width="92"><asp:imagebutton id="ImageButton1" runat="server" 
                            height="50" width="100" imageurl="~/images/进入按钮.jpg" 
                            onclick="ImageButton1_Click" />
                        <br />
                        <br />
                 <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#669999" 
                   onclick="LinkButton1_Click">返回首页</asp:LinkButton>
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>

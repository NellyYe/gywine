<%@ Page Language="C#" AutoEventWireup="true" CodeFile="信息完善.aspx.cs" Inherits="信息完善" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人资料修改</title>
    <style type="text/css">
            #footer{
            width: 950px;
            height: 50px;
            line-height: 50px;
            font-family:Arial,"宋体";
            text-align:center;
            margin: auto;
            background-color:#c2a981;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height:500px">
<div style="height:32px">
<div style="float:left">
<img alt="个人"  src="images/geren_1.png" style="height: 32px; width: 139px" />
</div>
<img alt="ge" src="images/geren_2.png"  style="height:32px; width:1000px" />
    <asp:Label ID="Label5" runat="server" Text="欢迎您！"></asp:Label>
    <asp:Label ID="username" runat="server" Text=""></asp:Label>
</div>
    

        <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
            <tr>
        <td width="600" height="126" align="center"><img height="70" width="235" alt="注册登陆" src="images/logo.png" /></td>
            </tr>
        </table>
             <table cellspacing="0" cellpadding="0" width="600" align="center" border="0">
             <tr>
           <td><br />
               <br />
               <asp:Label ID="Label1" runat="server" Text="用户名：" Width="100px"></asp:Label>
               <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
               <br />
               <br />
               <asp:Label ID="Label2" runat="server" Text="手机号：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_num" runat="server"></asp:TextBox>
               <br />
               <br />
               <asp:Label ID="Label6" runat="server" Text="邮 箱：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_qq" runat="server"></asp:TextBox>
               @qq.com<br />
               <br />
               <asp:Label ID="Label3" runat="server" Text="收货地址：" Width="100px"></asp:Label>
               <asp:TextBox ID="tb_address" runat="server" Width="300px" TextMode="MultiLine"></asp:TextBox>
               <br />
               <br />
               <asp:ImageButton ID="ImageButton1" runat="server" height="50" width="100"  
                   ImageUrl="images/提交按钮.jpg" onclick="ImageButton1_Click" />
                 <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#669999" 
                    CausesValidation="False" onclick="LinkButton1_Click">返回首页</asp:LinkButton>
                 <br />
                 </td>      
             </tr>
             </table>
    </div>
    <div id="footer">淄博高阳酒业有限公司 &#169; 2012-2016 版权所有　技术支持:酒水招商网div>
    </form>
</body>
</html>

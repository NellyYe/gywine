<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_pawchanges.aspx.cs" Inherits="admin_pawchanges" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员密码修改</title>
    <link href="style/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <style type="text/css">
    TD.forumRowHighlight { padding:3px 3px 3px 3px; BACKGROUND: #e4edf9; }
        #table2
        {
            height: 278px;
            width: 540px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="top"></div>
<div id="header">
	<div class="logo">高阳后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></li>
			<li><a href="admin_pawchanges.aspx">修改密码</a></li>
			<li><a href="Default.aspx">
                <asp:Label ID="Label2" runat="server" Text="退出"></asp:Label></a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>新闻管理</h4>
          <div class="list-item none">
            <a href='admin_news.aspx'>本站新闻</a>
            <a href='admin_lianjie.aspx'>链接网页</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>产品管理</h4>
          <div class="list-item none">
            <a href='admin_addproduct.aspx'>产品添加</a>
            <a href='admin_productlook.aspx'>产品查看和删除</a>
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>留言管理</h4>
          <div class="list-item none">
           <a href='admin_notelook.aspx'>留言查看和删除</a>
          </div>
        </li>
			<li>
          <h4 class="M4"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href='admin_userlook.aspx'>用户查看</a>
            <a href='admin_userdel.aspx'>信息删除</a>
          </div>
        </li>
  </ul>
    </div>
    <div class="right_thing">
			<table id="table2" CellSpacing="1" CellPadding="3" align="center"
				border="0">
				<tr>
					<th  colspan="2" id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: white; background-color:#a9c9ff"
						align="left" height="25">
						<p align="center">
                            管理员密码变更</p>
					</th>
				</tr>
                    <tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                       新密码：</td><td class="forumRowHighlight"><asp:TextBox ID="tb_NewPwd" runat="server" TextMode="password"></asp:TextBox> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_NewPwd"
                               ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>
                    <tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                       确认新密码：</td><td class="forumRowHighlight"><asp:TextBox ID="tb_ConNewPwd" runat="server" TextMode="password"></asp:TextBox> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_ConNewPwd"
                               ErrorMessage="必填"></asp:RequiredFieldValidator>
                           &nbsp;&nbsp;
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_NewPwd"
                               ControlToValidate="tb_ConNewPwd" ErrorMessage="两次输入密码不一样"></asp:CompareValidator></td></tr>
					<tr>
						<td  colspan="2" class="forumRowHighlight" height="12" >
                            &nbsp;&nbsp;
							<asp:Button id="btn_Ok" runat="server" Text="确定修改" Width="84px" 
                                onclick="btn_Ok_Click" ></asp:Button>
						</td>
						</tr>
                           </table>
    </div>
</div>

<div id="footer"><p> Copyright @ 2014. All rights reserved.Gaoyang 版权所有. 鲁ICP备00123314号</p></div>
<script type="text/javascript">navList(12);</script>
    </form>
</body>
</html>

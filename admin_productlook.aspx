﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_productlook.aspx.cs" Inherits="admin_productlook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>产品查看</title>
    <link href="style/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <style type="text/css">
    td.forumRow { padding:3px  3px 3px 3px;BACKGROUND: #f1f3f5;}
    .tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
    TD.forumRowHighlight { padding:3px 3px 3px 3px; BACKGROUND: #e4edf9; }
        .style2
        {
            width: 13%;
        }
        .style3
        {
            width: 93px;
        }
        .style4
        {
            width: 7%;
        }
        .style5
        {
            width: 10%;
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
<table class="tableBorder" id="table2" cellSpacing="1" cellPadding="3" border="0"
					style="width: 95%;">
					<tr style=" background-color:#a9c9ff;">
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; color:White;"
							align="left" colSpan="6" height="25">
                            产品查看</th>
					</tr>
					<tr>
						<td class="forumRow" align="center"><strong>ID</strong></td>
						<td align="center" class="forumRow"><strong>产品名称</strong></td>
						<td class="forumRow" align="center"><strong>产品图片</strong></td>
						<td class="forumRow" align="center"><strong>产品类别</strong></td>
						<td class="forumRow" align="center"><strong>产品介绍</strong></td>
						<td class="forumRow" align="center"  style="height: 25px; width: 20%;"><strong>删除</strong></td>
					</tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                            <ItemTemplate>
							<tr>
								<td align="center"><%#DataBinder.Eval(Container.DataItem,"id")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "产品名称")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "产品图片")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "产品类别")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "产品介绍")%></td>
								<td align="center">
                                <asp:LinkButton ID="link_dele" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="del" CausesValidation="False">删除</asp:LinkButton></td>
							</tr>
							</ItemTemplate>
        </asp:Repeater>    
    </table>
    </div>
</div>

<div id="footer"><p> Copyright @ 2014. All rights reserved.Gaoyang 版权所有. 鲁ICP备00123314号</p></div>
<script type="text/javascript">navList(12);</script>
    </form>
</body>
</html>

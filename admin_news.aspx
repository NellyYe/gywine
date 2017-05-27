<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_news.aspx.cs" Inherits="admin_news" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻管理</title>
    <link href="style/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <style type="text/css">
    td.forumRow { padding:3px  3px 3px 3px;BACKGROUND: #f1f3f5;}
    .tableBorder {BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
    TD.forumRowHighlight { padding:3px 3px 3px 3px; BACKGROUND: #e4edf9; }
        .style1
        {
            height: 23px;
            width: 10%;
        }
        .style2
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
<table class="tableBorder" id="table2" height="151" cellSpacing="1" cellPadding="3" border="0"
					style="width: 100%; height: 129px">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; color: white; background-color:#a9c9ff"
							align="left" colSpan="5" height="25">
                      <p align="center">
                            <asp:Label ID="lbl_title" Text="添加新闻" runat="server" /></p></th>
					</tr>
					<tr>
						<td class="forumRowHighlight" colSpan="5" height="17" valign="middle">
						<table border="0" width="100%" id="table5" cellspacing="3" cellpadding="0">
								
								<tr>
									<td style="height: 21px">
                                        添加内容:
									</td>
									<td style="height: 21px"><asp:TextBox ID="tb_SiteName" runat="server" Width="317px" 
                                            TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_SiteName"
                                            ErrorMessage="不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
								</tr>
								<tr>
									<td >
                                        添加时间:
									</td>
									<td >
                                       <asp:TextBox ID="tb_SiteUrl" runat="server" Width="317px" MaxLength="255" 
                                            onload="tb_SiteUrl_Load" ReadOnly="True"></asp:TextBox>
                                        </td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><asp:Button ID="btn_Ok" runat="server" Text="添加" Width="44px" Height="23px" onclick="btn_Ok_Click" 
                                            ></asp:Button></td>
								</tr>
							</table>
				    </td>
				    </tr>
					<tr>
						<td class="forumRow" align="center" style="height: 25px; width: 10%;"><strong>ID</strong></td>
						<td width="20%" align="center" class="forumRow" style="height: 25px"><strong>添加内容</strong></td>
						<td class="forumRow" align="center" width="20%" style="height: 25px"><strong>更新时间</strong></td>
						<td class="forumRow" align="center" width="10%" style="height: 25px"><strong>修改</strong></td>
						<td class="forumRow" align="center" width="10%" style="height: 25px"><strong>删除</strong></td>
					</tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                            <ItemTemplate>
							<tr>
								<td align="center"><%#DataBinder.Eval(Container.DataItem,"id")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "添加内容")%></td>
								<td align="center"><%#DataBinder.Eval(Container.DataItem, "更新时间")%></td>
								<td align="center">
                                    <a href="#"><asp:LinkButton ID="link_xg" CommandArgument='<%#Eval("id")%>' runat="server" ForeColor="Red" CommandName="fix">修改</asp:LinkButton></a></td>
								<td width="10%" height="25" align="center">
                                <asp:LinkButton ID="link_dele" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="del" OnClientClick="return confirm('你确认要删除吗?')" CausesValidation="False">删除</asp:LinkButton></td>
							</tr>
							</ItemTemplate>
        </asp:Repeater>    
    </table>
    </div>
</div>

<script type="text/javascript">navList(12);</script>
    </form>
</body>
</html>

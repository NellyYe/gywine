<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_addproduct.aspx.cs" Inherits="admin_addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品添加</title>
    <link href="style/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <style type="text/css">
    .tableBorder { border-right: #183789 1px solid; border-top: #183789 1px solid; border-left: #183789 1px solid; width: 98%; border-bottom: #183789 1px solid; background-color: #ffffff }
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
<table class="tableBorder" id="table2" height="745px" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="font-weight: bold; font-size: 12px; color: white; background-color: #a9c9ff"
						align="left" height="25">
						<p align="center">
                            产品添加</p>
					</th>
				</tr>
				<tr>
					<td  valign="top" align="right"  height="715">
					<table id="table5" height="413" cellSpacing="1" cellPadding="3" align="center" 
							bgColor="#e7e7e7" border="0" style="width: 681px">
							
							<tr>
								<td bgColor="#f7f7f7" >
									<table border="0" cellPadding="0" cellSpacing="2" id="table19" height="100%" width="100%">
										<tr>
											<td style="WIDTH: 75px; ">
                                               产品名称：</td>
											<td><asp:textbox id="tb_ProductName" runat="server" Width="160px" ></asp:textbox>
                                                </td>
											
										</tr>
										<tr>
											<td style="WIDTH: 75px; ">
                                                产品类别：</td>
											<td ><asp:dropdownlist id="dw_ProductClass" runat="server"></asp:dropdownlist></td>
											
										</tr>
										<tr>
											<td style="width: 75px" >
                                                图片路径：</td>
											<td colSpan="3" >
											<asp:Panel ID="pan_Edit" runat="server" Width="100%">
                                                <asp:TextBox ID="tb_PicUrl" runat="server" Width="159px">~/images</asp:TextBox><br />
                                                <table id="tb_body" style="DISPLAY: none" cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td style="height: 21px;" ><INPUT id="myfileEdit" 
																type="file" size="25" name="myfile" runat="server"></td>
													</tr>
												</table></asp:Panel>												
												<asp:Panel ID="pan_Add" runat="server" Width="100%">
												<table  cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td style="height: 21px"><input id="myfileAdd" 
																type="file" size="25" name="myfile" runat="server" /></td>
													</tr>
												</table>
												</asp:Panel>
												</td>
										</tr>
									</table>
								</td>

							</tr>
							
							
							
							<tr>
								<td colspan="2" style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px;"
									align="center" bgcolor="#f7f7f7" height="147">
									<table id="table21" height="147" cellSpacing="0" cellPadding="0" border="0" style="width: 666px">
										<tr>
											<td style=" font-size: 12px; color: #000000; height: 25px;">
                                                作品简介：</td>
										</tr>
										<tr>
											<td style=" font-size: 12px; color: #000000"
												valign="top" height="122"><font face="宋体">&nbsp;
                                                    <asp:TextBox ID="TextBox1" runat="server" Height="55px" 
                                                    TextMode="MultiLine" Width="400px"></asp:TextBox>
                                                </font></td>
                                               
										</tr>
									</table>
                               </td>
							</tr>
							<tr><td align="center"  colspan="2" style="width: 487px"><asp:Button ID="btn_Ok" 
                                    runat="server" Text="确认添加" Width="120px" OnClick="btn_Ok_Click" />
							</td></tr>
						</table>
              
						<br>
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

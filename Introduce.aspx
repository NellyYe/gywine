﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Introduce.aspx.cs" Inherits="Introduce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>高阳酒业网</title>
    <style type="text/css">
        body{
            background: url("images/bg.gif") center top repeat-x;background-attachment: scroll;
            color: #000;
            font-family: "宋体", arial;
            font-size: 12px;
            margin: 0 auto;
            padding: 0;
            text-align: center;
        }
        html,body{height: 100%;}
        .clear{clear:both;over-flow:hidden;height:1px;margin-top:-1px;}
        ul,li{list-style-type:none;margin:0;padding:0;}
        a{color:dimgray;text-decoration:none;}
        a:hover{text-decoration:underline;}
        /*头部*/
        .pub{
            width: 350px;
            height: 30px;
            line-height: 30px;
            font-size: 12px;
            color: #ccc;
            float: right;
            padding-right: 150px;
            padding-top: 5px;
            text-indent: 15px;
        }
        .pub span{
            width: 200px;
            height: 30px;
            margin-right: 15px;
            float: right;
            text-indent: 15px;
        }
        .pub a:hover{color:#FF0000;text-decoration:underline;}
        .comname{overflow:hidden;width:950px;height:80px; line-height:80px;text-indent:20px;margin-left: 200px;}
        .comname h1{
            width: 320px;
            height: 80px;line-height:80px;
            font-family:"Microsoft YaHei","微软雅黑","黑体";
            font-size:30px;
            font-weight:normal;color:darkred; float:left;
        }
        h1 a:hover{
            width: 300px;
            height: 39px;
        }
        /*水平导航*/
        .menu{width:950px;height:35px;margin: 0 0 0 350px;}
        .menu ul{width:750px;height:35px;padding-left:270px;padding: 0;margin: 0;display: block;}
        .menu li{font-size: 18px;display: block;font-family: "microsoft yahei",simhei;
            width:85px;height:35px;line-height:35px;text-align:center;float:left;margin: 0 20px;}
        /*Banner图片*/
        * { margin: 0; padding: 0; list-style: none; }
        .con { width: 998px; height: 300px; border: 1px solid darkgray; margin: 20px auto; overflow:hidden; }
        .con ul { width: 1100px; margin: 0 0 0 -1px; }
        .con ul li { float:left; width: 199px; border-left: 1px solid gray; }
        /*正文*/
        #content{
            width: 950px;
            height: auto;
            margin: auto;
            padding-top: 1px;
        }
        /*正文左侧*/
        #content_left{width:200px;float:left;overflow:hidden;}
        /*左侧垂直导航*/
        .left_menu{padding:10px;width:180px;margin:auto;}
        .t{background:url("images/left_T.gif")no-repeat;height: 10px;}
        .c{background: url("images/left_C.gif") repeat-y;height: auto;}
        .f{background: url("images/left_F.gif") no-repeat;height: 10px;}
        .c ul{width:160px;padding:0 10px;}
        .c li{width:160px;height:35px;background:url(../images/li_bg_y.gif) bottom repeat-x;line-height:35px;}
        .c a{color:#ebd2be;text-decoration:none;display:block;font-size: 14px}
        .c a:hover{text-decoration:underline;background: url("../images/dot_1.gif") 10px no-repeat;}
        .c h3{color:#ff7200;font-size:14px;font-weight:bold;border-bottom:#ff7200 1px solid;height:30px;line-height:25px;padding:0;margin:0;}
        /*友情链接*/
        .f_link{padding:0 10px 10px;width:180px;margin:auto;}
        .f_link h3{color:#ff7200;font-size:14px;font-weight:bold;text-indent:5px;height:50px;line-height:50px;padding:0;margin:0;}
        /*正文右侧*/
        #content_right{width:735px;height: 600px;float:right;padding-top:5px;}
        /*公司介绍*/
        .about{width:735px;height:auto;}
        .title{
            background: url("images/li_bg_r.gif")bottom repeat-x;
            height: 50px;line-height: 50px;
        }
        .title h3{float:left;color:#ebd2be;font-size:16px;font-weight:bold;text-indent:5px;padding:0;margin:0;}
        .title span{float:right;padding:0;margin:0 10px 0 0;font-size:12px;font-family:Arial,"宋体";font-weight:normal;}
        .cont{width:715px;padding:10px;height:auto;}
        .page_logo{width: 300px;height: 225px;margin: 20px auto;padding: 4px;}
        .page_content{width: 715px;height: 234px;line-height: 180%;overflow: hidden;}
        .page_content p{width: 715px;height: 210px;display: block;}
        .clear{clear: both;height: 1px;margin-top: -1px;}

        #footer{
            width: 950px;
            height: 50px;
            line-height: 50px;
            font-family:Arial,"宋体";
            text-align:center;
            margin: auto;
            background: url("images/line_bg.gif")top no-repeat;
        }
    </style>
    <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.con ul li').hover(function(e) {
                $(this).stop().animate({'width':'599px'},500).siblings().stop().animate({'width':'99px'},500);
            },function(){
                $('.con ul li').stop().animate({'width':'199px'},500);
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
<div id="top">
    <div class="pub">
        <span>
            <a href="用户登录.aspx">登录</a>|
            <a href="注册页面.aspx">免费注册</a>|
            <a href="#">修改</a>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </span>
    </div>
    <div class="comname">
        <h1><a href=""></a>淄博高阳酒业有限公司</h1>
    </div>
    <div class="menu">
        <ul>
            <li><a href="Default.aspx">首 页</a></li>
            <li><a href="Introduce.aspx">公司介绍</a></li>
            <li><a href="Gyj.aspx">产品展示</a></li>
            <li><a href="News.aspx">企业资讯</a></li>
            <li><a href="Contact.aspx">联系我们</a></li>
        </ul>
    </div>
</div>
<div class="con">
    <ul>
        <li><img src="images/1.jpg" width="600" height="300" /></li>
        <li><img src="images/9.jpg" width="600" height="300" /></li>
        <li><img src="images/10.jpg" width="600" height="300" /></li>
        <li><img src="images/11.jpg" width="600" height="300" /></li>
        <li><img src="images/12.jpg" width="600" height="300" /></li>
    </ul>
</div>
<div id="content">
    <div id="content_left">
        <div class="left_menu">
            <div class="t"></div>
            <div class="c">
                <h3>公司介绍</h3>
                <ul>
                    <li><a href="Introduce.aspx">公司介绍</a></li>
                    <li><a href="Culture.aspx">公司文化</a></li>
                    <li><a href="Honor.aspx">资质荣誉</a></li>
                </ul>
            </div>
            <div class="f"></div>
        </div>
        <div class="left_link">
            <h3>友情链接</h3>
    <div>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div>
                        <a href='#'><%#Eval("网站名称") %>></a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jiuConnectionString4 %>" 
            SelectCommand="SELECT [网站名称] FROM [WebConfig]"></asp:SqlDataSource>
    </div>
        </div>
    </div>
    <div id="content_right">
        <div class="about">
            <div class="title">
                <h3>公司介绍</h3>
                <span>
                    您的位置：<a href="Default.aspx">首页</a> &gt;&gt; 公司介绍
                </span>
            </div>
            <div class="cont">
                <div class="page_logo">
                    <img src="images/2.jpg" width="300" height="225" alt=""/>
                </div>
                <div class="page_content">
                    <p>高阳郡，一个古老而又亲切的名字。高阳酒，自北魏兴起至今历经风雨1600余年，穿越历史的长河，虽然“户户垂酒幌，家家设酒垆”的景象已经跟随历史的长河流向远方，“开坛十里香，酒酿三年醒”的动人故事也成为传说，但是高阳馆外，酒旗依然随风飘扬！关于高阳淄博市临淄高阳酒业集团屹立于齐鲁大地，位于高阳古城之东（齐国古都临淄城），乌龙江之阳。酿酒历史悠久，北魏时为酿酒盛地，高阳酒业集团厂东有醉翁刘伶坟与酿酒大师杜康墓，享有“杜康酒刘伶醉之说”。被誉为临淄八景之首（高阳馆外酒旗风）自从历代酿酒延续至今，特别是从清朝到解放前更为昌盛，远近闻名。淄博市临淄高阳酒业坐落在齐国古都临淄区高阳，酿酒历史悠久.北魏时为酿酒盛地誉为临淄八景之首.(高阳馆外酒旗风)自历代酿酒延续至今。高阳酒厂1991年成立，建地面积10000㎡，年产白酒6000吨，共有职工200多人，生产、技术（研发）、质检、采购、物流仓储、销售、行政人事七大职能部门。挖掘古老工艺，利用地下优质矿泉水，结合传统工艺及科学酿制方法，研制出口味绵软醇厚的佳酿。现有高阳、贾公、高阳郡等系列。公司尊崇“踏实、拼搏、责任”的企业精神，以“诚信、共赢、开创”经营理念，全新的管理模式，周到的服务，卓越的品质为生存根本，始终坚持用户至上，用自己的服务去打动客户。</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">"淄博高阳酒业有限公司 &#169; 2012-2016 版权所有　技术支持："<a href="http://www.js118.com.cn/">酒水招商网</a></div>
    </form>
</body>
</html>

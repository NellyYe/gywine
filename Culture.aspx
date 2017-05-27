<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Culture.aspx.cs" Inherits="Culture" %>

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
        .c li{width:160px;height:35px;background:url("images/li_bg_y.gif") bottom repeat-x;line-height:35px;}
        .c a{color:#ebd2be;text-decoration:none;display:block;font-size: 14px}
        .c a:hover{text-decoration:underline;background: url("images/dot_1.gif") 10px no-repeat;}
        .c h3{color:#ff7200;font-size:14px;font-weight:bold;border-bottom:#ff7200 1px solid;height:30px;line-height:25px;padding:0;margin:0;}
        /*友情链接*/
        .f_link{padding:0 10px 10px;width:180px;margin:auto;}
        .f_link h3{color:#ff7200;font-size:14px;font-weight:bold;text-indent:5px;height:50px;line-height:50px;padding:0;margin:0;}
        /*正文右侧*/
        #content_right{width:735px;height: 750px;float:right;padding-top:5px;}
        /*公司文化*/
        .about{width:735px;height:auto;}
        .title{
            background: url("images/li_bg_r.gif")bottom repeat-x;
            height: 50px;line-height: 50px;
        }
        .title h3{float:left;color:#ebd2be;font-size:16px;font-weight:bold;text-indent:5px;padding:0;margin:0;}
        .title span{float:right;padding:0;margin:0 10px 0 0;font-size:12px;font-family:Arial,"宋体";font-weight:normal;}
        .cont{width:715px;padding:10px;height:auto;}
        .custom span{float: left;text-align: left;padding-bottom: 0px;text-transform: none;
            list-style-type: none;font-size: 18px;white-space: normal;
            letter-spacing: normal;color: #E53333;}
        .custom span strong{list-style-type: none;padding-bottom: 2px;margin: 0;color:#333333 ;font-size: 14px;}
        .custom span strong p{padding-bottom: 0px;text-transform: none;text-align: left;list-style-type: none;padding: 5px;margin: 0;color:#333333 ;font-size: 12px;}
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
                <h3>公司文化</h3>
                <span>
                    您的位置：<a href="Default.aspx">首页</a> &gt;&gt; 公司文化
                </span>
            </div>
            <div class="cont">
                <div class="custom">
                    <span>企业精神：
                        <strong>时刻比别人努力十倍!
                            <p><strong>★&nbsp;杰出&nbsp;</strong>是高阳人对自己的要求，只有做到杰出，才能在市场大潮中屹立不败。</p>
                            <p><strong>★&nbsp;努力&nbsp;</strong>是做到杰出的唯一方法，只有时刻比别人努力，并且比别人努力十倍以上，才能真正做到杰出。</p>
                            <p><strong>★&nbsp;强烈的使命感&nbsp;</strong>是高阳人能够全身心地投入工作、付出他人十倍努力的精神源泉所在。</p>
                        </strong>
                    </span>

                    <span>经营理念：
                        <strong>市场至上，消费者至上，永远不断地提升企业品质、产品品质、服务品质
                            <p>在长期的企业经营中，高阳人成功地实现了观念的转变与经营的转变，大力地调整了产品 结构，实现了良好的品牌布局，拥有了扎实的市场基础建设。国井人从市场实际出发，从消费者的需求出发；通过提升企业水准，改进产品、提高服务，获得了消费者的认同。这种理 念将贯彻到高阳以后的企业经营中去，继续把市场，把消费者放在第一位，把企业品质、 产品品质、服务品质的提升作为企业经营的永恒主题来抓。</p>
                    </strong>
                    </span>

                    <span>核心价值观：
                        <strong>诚信、责任、友爱、共赢、创新
                            <p><strong>★&nbsp;诚信&nbsp;</strong>诚信待人是赢得信任的基石。长年以来，高阳人坚持诚信经营、说到做到，持续兑现对社会、消费者、对合作者的承诺，这为企业获得良好口碑和更多的企业发展资源提 供了永续支持。</p>
                            <p><strong>★&nbsp;责任&nbsp;</strong>社会责任感，使高阳能够跳出经济利益的桎梏，担负起应尽的责任。高阳人认为国井的发展，不仅是企业自身的要求，更是社会对高阳的期待与要求。另一方面，作为企业的一员，对社会、对他人都应具有责任心。</p>
                            <p><strong>★&nbsp;友爱&nbsp;</strong>高阳人坚持平和、友善的心态，建设一个互相关爱、团结敬业的团队，使企业变得更高效、员工更积极。</p>
                            <p><strong>★&nbsp;共赢&nbsp;</strong>高阳人认为，合作是一个企业发展的必要途径。高阳愿意和更多的企业合作，也希望其他企业能通过和高阳的合作获得利益。多为他人考虑的理念让高阳的朋友无处不在。</p>
                            <p><strong>★&nbsp;创新&nbsp;</strong>创新是高阳人永恒的主题，每个高阳人都要有一个开放的心态，开放的思维，不断使用新方法、新技术，具有勇于挑战自我和挑战过去一切的勇气。</p>
                        </strong>
                    </span>

                    <span>企业使命：
                        <strong>引领行业未来，激发行业魅力
                            <p>企业的发展，是行业发展的一部分。高阳认为，白酒行业是一个朝阳行业，是一个充满活力的行业，白酒行业将朝着更高附加值的方向发展。高阳作为一个有使命感的企业，有责任贡献自己的力量，不断创新，以持续的、更加优秀的产品，引领行业的美好未来，激发白酒行业的无限活力与魅力。</p>
                        </strong>
                    </span>

                    <span>企业作风：
                        <strong>没有任何借口　误事没有理由</strong>
                    </span>

                    <span>企业文化理念：
                        <p><strong>★&nbsp外圆内方，对外合作共赢，对内纪律严明，塑造成功团队</strong></p>
                        <p><strong>★&nbsp天道酬勤，奉献者理应得到回报</strong></p>
                        <p><strong>★&nbsp用想干好能干好的人</strong></p>
                        <p><strong>★&nbsp鼓励员工以企业利益为出发点，提出意见与建议</strong></p>
                        <p><strong>★&nbsp处事透明、合理、合法、合情</strong></p>
                        <p><strong>★&nbsp保持高效团队执行力，注重细节</strong></p>
                        <p><strong>★&nbsp使每个人的创造愿望得到尊重，创造活动得到支持，创造才能得到发挥，创造成果得到肯定</strong></p>
                        <p><strong>★&nbsp多激励、多支持、多沟通、少批评、少指责、少抱怨</strong></p>
                    </span>
                    
                    <span>企业员工信仰：
                        <strong>心有多大，舞台就有多大</strong>
                    </span>


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

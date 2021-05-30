<%@ page language="java" import="java.util.*" pageEncoding="gb2312" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>左侧导航</title>
    <head>
        <link rel="stylesheet" type="text/css" href="images/index.css">
        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
                overflow-x: hidden;
            }

            html, body {
                height: 100%;
            }

            img {
                border: none;
            }

            * {
                font-family: '微软雅黑';
                font-size: 12px;
                color: #626262;
            }

            dl, dt, dd {
                display: block;
                margin: 0;
            }

            a {
                text-decoration: none;
            }

            #bg {
                background-image: url(images/content/dotted.png);
            }

            .container {
                width: 100%;
                height: 100%;
                margin: auto;
            }

            /*left*/
            .leftsidebar_box {
                width: 160px;
                height: auto !important;
                overflow: visible !important;
                position: fixed;
                height: 100% !important;
                background-color: #339999;
            }

            .line {
                height: 2px;
                width: 100%;
                background-image: url(images/left/line_bg.png);
                background-repeat: repeat-x;
            }

            .leftsidebar_box dt {
                padding-left: 40px;
                padding-right: 10px;
                background-repeat: no-repeat;
                background-position: 10px center;
                color: #f5f5f5;
                font-size: 14px;
                position: relative;
                line-height: 48px;
                cursor: pointer;
            }

            .leftsidebar_box dd {
                background-color: #339999;
                padding-left: 40px;
            }

            .leftsidebar_box dd a {
                color: #f5f5f5;
                line-height: 20px;
            }

            .leftsidebar_box dt img {
                position: absolute;
                right: 10px;
                top: 20px;
            }

            .system_log dt {
                background-image: url(images/left/system.png)
            }

            .custom dt {
                background-image: url(images/left/custom.png)
            }

            .channel dt {
                background-image: url(images/left/channel.png)
            }

            .app dt {
                background-image: url(images/left/app.png)
            }

            .cloud dt {
                background-image: url(images/left/cloud.png)
            }

            .syetem_management dt {
                background-image: url(images/left/syetem_management.png)
            }

            .source dt {
                background-image: url(images/left/source.png)
            }

            .statistics dt {
                background-image: url(images/left/statistics.png)
            }

            .leftsidebar_box dl dd:last-child {
                padding-bottom: 10px;
            }
        </style>
    </head>
<body id="bg">
<div class="container">
    <div class="leftsidebar_box">

        <dl class="custom">
            <dt onClick="changeImage()">系统用户管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="yhzhgl.jsp" target="hsgmain">管理员用户</a></dd>
            <dd><a href="mod.jsp" target="hsgmain">修改密码</a></dd>
        </dl>

        <dl class="custom">
            <dt onClick="changeImage()">留言管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="liuyanban_list.jsp" target="hsgmain">留言管理</a></dd>
        </dl>
        <dl class="custom">
            <dt onClick="changeImage()">友情连接管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="youqinglianjie_add.jsp" target="hsgmain">友情连接添加</a></dd>
            <dd><a href="youqinglianjie_list.jsp" target="hsgmain">友情连接查询</a></dd>
        </dl>
        <dl class="custom">
            <dt onClick="changeImage()">首页轮播图管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="xinwentongzhi_add.jsp?lb=变幻图" target="hsgmain">变幻图添加</a></dd>
            <dd><a href="xinwentongzhi_list.jsp?lb=变幻图" target="hsgmain">变幻图查询</a></dd>
        </dl>
<%--        <dl class="custom">
            <dt onClick="changeImage()">校园风光管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="xiaoyuanfengguang_add.jsp" target="hsgmain">校园风光添加</a></dd>
            <dd><a href="xiaoyuanfengguang_list.jsp" target="hsgmain">校园风光查询</a></dd>
        </dl>--%>
        <dl class="custom">
            <dt onClick="changeImage()">辅导员管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="fudaoyuanxinxi_add.jsp" target="hsgmain">辅导员添加</a></dd>
            <dd><a href="fudaoyuanxinxi_list.jsp" target="hsgmain">辅导员查询</a></dd>

        </dl>
<%--        <dl class="custom">
            <dt onClick="changeImage()">学生管理<img src="images/left/select_xl01.png"></dt>


            <dd><a href="xinshengxinxi_add.jsp" target="hsgmain">新生信息添加</a></dd>
            <dd><a href="xinshengxinxi_list.jsp" target="hsgmain">新生信息查询</a></dd>

        </dl>--%>
        <dl class="custom">
            <dt onClick="changeImage()">班级信息管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="banjixinxi_add.jsp" target="hsgmain">班级添加</a></dd>
            <dd><a href="banjixinxi_list.jsp" target="hsgmain">班级查询</a></dd>

        </dl>
        <dl class="custom">
            <dt onClick="changeImage()">专业信息管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="zhuanyexinxi_add.jsp" target="hsgmain">专业添加</a></dd>
            <dd><a href="zhuanyexinxi_list.jsp" target="hsgmain">专业查询</a></dd>

        </dl>
        <dl class="custom">
            <dt onClick="changeImage()">物资信息管理<img src="images/left/select_xl01.png"></dt>


            <dd><a href="wuzixinxi_add.jsp" target="hsgmain">物资信息添加</a></dd>
            <dd><a href="wuzixinxi_list.jsp" target="hsgmain">物资信息查询</a></dd>

            <dd><a href="chukuxinxi_list.jsp" target="hsgmain">物资出库查询</a></dd>

            <dd><a href="rukuxinxi_list.jsp" target="hsgmain">物资入库查询</a></dd>
        </dl>

        <dl class="custom">
            <dt onClick="changeImage()">宿舍信息管理<img src="images/left/select_xl01.png"></dt>
            <dd><a href="sushexinxi_add.jsp" target="hsgmain">宿舍添加</a></dd>
            <dd><a href="sushexinxi_list.jsp" target="hsgmain">宿舍查询</a></dd>

        </dl>


    </div>

</div>
<script type="text/javascript" src="images/jquery.js"></script>
<script type="text/javascript">
    $(".leftsidebar_box dt").css({"background-color": "#339999"});
    $(".leftsidebar_box dt img").attr("src", "images/left/select_xl01.png");
    $(function () {
        $(".leftsidebar_box dd").hide();
        $(".leftsidebar_box dt").click(function () {
            $(".leftsidebar_box dt").css({"background-color": "#339999"})
            $(this).css({"background-color": "#339999"});
            $(this).parent().find('dd').removeClass("menu_chioce");
            $(".leftsidebar_box dt img").attr("src", "images/left/select_xl01.png");
            $(this).parent().find('img').attr("src", "images/left/select_xl.png");
            $(".menu_chioce").slideUp();
            $(this).parent().find('dd').slideToggle();
            $(this).parent().find('dd').addClass("menu_chioce");
        });
    })
</script>
</body>
</html>

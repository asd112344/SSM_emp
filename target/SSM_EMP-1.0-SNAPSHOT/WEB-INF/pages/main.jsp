<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/28
  Time: 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>员工管理系统</title>
    <!-- 引入bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

    <!-- 引入jquery -->
    <script src="js/jquery-3.5.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- 引入自定义js -->
    <script src="/js/index.js"></script>
    <style>
        #carousel_container{
            margin-bottom: 20px;
        }
        #carousel_container img{
            width:780px;
            height: 480px;
        }
    </style>
</head>
<body>
<jsp:include page="topbar.jsp"></jsp:include>

<!-- 主题内容 -->
<div class="container-fluid">
    <div class="row">
        <jsp:include page="leftMenu.jsp"></jsp:include>
        <!-- 右侧内容 -->
        <div class="col-sm-8 page-main">
            <ol class="breadcrumb">
                <li>系统主页</li>
            </ol>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <!-- 轮播图 -->
                    <div class="carousel slide" id="carousel_container" data-ride="carousel" data-interval="2000">
                        <!-- 图片容器 -->
                        <div class="carousel carousel-inner">
                            <div class="item active">
                                <img src="img/build1.jpg">
                            </div>
                            <div class="item">
                                <img src="img/build2.jpg">
                            </div>
                            <div class="item">
                                <img src="img/build3.jpg">
                            </div>
                            <div class="item">
                                <img src="img/build4.jpg">
                            </div>
                        </div>
                        <!-- 小圆圈容器 -->
                        <ol class="carousel-indicators">
                            <li data-slide-to="0" data-target="#carousel_container"></li>
                            <li data-slide-to="1" data-target="#carousel_container"></li>
                            <li data-slide-to="2" data-target="#carousel_container"></li>
                            <li data-slide-to="3" data-target="#carousel_container"></li>
                        </ol>
                        <!-- 左右按钮 -->
                        <a href="#carousel_container" data-slide="prev" class="left carousel-control">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a href="#carousel_container" data-slide="next" class="right carousel-control">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:skyblue">
                    系统介绍
                </div>
                <div class="panel-body">
                    <marquee scrollamount="2" behaviour="alternative" direction="up" scrolldelay="100">
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;在当今社会，互联网空间的发展，给人们的工作和生活带来了极大的便利和高效，信息化、电子化已经成为节约运营成本，提高工作效率的首选。当前大量企业的员工管理尚处于手工作业阶段，不但效率低下，还常常因为管理的不慎而出现纰漏。因此部分企业需求，设计企业员工信息管理系统，以帮助企业达到员工管理办公自动化、节约管理成本、提高企业工作效率的目的。
                            企业员工信息管理系统采用B/S结构，主要对企业员工的信息以及跟人事相关的工作流程进行集中管理，方便企业建立一个完善的、强大的员工信息数据库。使用HTML和Java设计管理页面和编写操作程序，完成数据输入、修改、存储、调用查询等功能；并使用MySQL数据库形成数据表，进行数据存储。</p>
                    </marquee>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

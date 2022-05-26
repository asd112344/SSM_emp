<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/30
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 导航 -->
<nav class="navbar navbar-default navbar-static-top  navbar-inverse">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#slide-left">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <label  class="navbar-brand">员工信息管理</label>
    </div>
    <ul class="nav navbar-nav nav-menu" style="margin-right: 25px;" >
        <li ><a href="${pageContext.request.contextPath}/main">首页</a></li>
        <li><a href="">使用指南</a></li>
        <li><a href="${pageContext.request.contextPath}/about">关于</a></li>
    </ul>
    <!-- 搜索框 -->
    <form class="navbar-form navbar-left">
        <div class="input-group">
            <input type="" class="form-control" />
            <span class="input-group-btn">
						<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
					</span>
        </div>
    </form>
    <ul class="nav navbar-nav navbar-right pull-right" style="margin-right: 40px;">
        <li><a href="">欢迎&nbsp;${userName} 登录</a></li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的
                <span class="caret"></span></a>
            <ul class="dropdown-menu text-center">
                <li role="separator" class="divider"></li>
                <li class="text-center"><a href="index.jsp">退出</a></li>
            </ul>
        </li>
    </ul>
</nav>


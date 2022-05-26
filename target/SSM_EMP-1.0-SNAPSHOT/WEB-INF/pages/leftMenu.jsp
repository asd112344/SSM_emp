<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/30
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 侧边栏 -->
<div class="navbar-default navbar-collapse col-sm-2" id="slide-left">
    <ul class="nav col-sm-12 slide-group">
        <li>
            <a href="#sub1" class="collapse" data-toggle="collapse">员工管理<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
            <ul id="sub1" class="nav collapse">
                <li class="text-center"><a href="${pageContext.request.contextPath}/toEmployee"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;员工信息</a></li>
            </ul>
        </li>
        <li>
            <a href="#sub2" class="collapse" data-toggle="collapse">部门管理<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
            <ul id="sub2" class="nav collapse">
                <li class="text-center"><a href="${pageContext.request.contextPath}/toDepartment"><span class="glyphicon glyphicon-book"></span>&nbsp;部门信息</a></li>
            </ul>
        </li>
        <li>
            <a href="#sub3" class="collapse" data-toggle="collapse">访客信息<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
            <ul id="sub3" class="nav collapse">
                <li class="text-center"><a href="${pageContext.request.contextPath}/toVisitor"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;访客列表</a></li>
            </ul>
        </li>
        <li>
            <a href="#sub4" class="collapse" data-toggle="collapse">个人资料<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
            <ul id="sub4" class="nav collapse">
                <li class="text-center"><a href="${pageContext.request.contextPath}/toUserMsg?id=${userId}"><span class="glyphicon glyphicon-dashboard"></span>&nbsp;个人信息</a></li>
                <li class="text-center"><a href="${pageContext.request.contextPath}/toModifyPwd?id=${userId}"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;修改密码</a></li>
            </ul>
        </li>
<%--        <li>--%>
<%--            <a href="#sub5" class="collapse" data-toggle="collapse">测试<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>--%>
<%--            <ul id="sub5" class="nav collapse">--%>
<%--                <li class="text-center"><a href="${pageContext.request.contextPath}/getTest"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;测试列表</a></li>--%>
<%--            </ul>--%>
<%--        </li>--%>
    </ul>
</div>
<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/30
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/index.css"/>
    <script src="js/jquery-3.5.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="topbar.jsp"></jsp:include>

<!-- 主题内容 -->
<div class="container-fluid">
    <div class="row">
        <jsp:include page="leftMenu.jsp"></jsp:include>
        <div class="col-sm-10 page-main">
            <ol class="breadcrumb">
                <li>员工管理</li>
                <li>员工信息</li>
            </ol>
            <form class="form-inline" action="${pageContext.request.contextPath}/searchEmp">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入邮箱" name="email">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入员工号" name="empId">
                </div>
                <button class="btn btn-info"><span class="glyphicon glyphicon-search"></span></button>
            </form>
            <hr>
            <div class="text-center"  style="display:block">
                <a href="${pageContext.request.contextPath}/toAddEmp" class="btn btn-primary col-sm-1" style="margin-right:10px" ><span class="glyphicon glyphicon-plus"  style="margin-right: 10px;"></span>添加</a>
                <button class="btn btn-warning col-sm-1"><span class="glyphicon glyphicon-upload" style="margin-right: 10px;"></span>导出</button>
            </div>
            <label class="pull-right"  style="margin-right:20px">共有数据${total}条</label>
            <table class="table table-striped table-bordered text-center"  style="margin-top:80px">
                <thead>
                <tr>
                    <th class="text-center">员工号</th>
                    <th class="text-center">姓名</th>
                    <th class="text-center">性别</th>
                    <th class="text-center">邮箱</th>
                    <th class="text-center">生日</th>
                    <th class="text-center">所属部门</th>
                    <th class="text-center">操作</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="emp" items="${empList}" >
                        <tr>
                            <td>${emp.empId}</td>
                            <td>${emp.name}</td>
                            <td>${emp.gender == 1 ? "男" : "女"}</td>
                            <td>${emp.email}</td>
                            <td><fmt:formatDate value="${emp.birth}" pattern="yyyy-MM-dd hh:mm" />
                            </td>
                            <td>${emp.deptName}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/toModifyEmp?id=${emp.id}" ><span class="glyphicon glyphicon-pencil"  style="margin-right:10px"></span></a>
                                <a href="${pageContext.request.contextPath}/deleteEmp?id=${emp.id}"><span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="row text-center">
                <div class="form-group">
                    <label class="pull-right"  style="margin-right:20px">当前第${page.currentIndex}页，共${page.totalIndex}页</label>
                </div>
                <form class="form-inline" style="padding:20px" action="">

                    <div class="col-sm-6 col-sm-offset-2">
                        <ul class="pagination">
                            <li><a href="${pageContext.request.contextPath}/toEmployee?start=0" aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
                            <c:if test="${page.currentIndex != 1}">
                                <li><a href="${pageContext.request.contextPath}/toEmployee?start=${page.start - page.count}&currentIndex=${page.currentIndex-1}" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
                            </c:if>
                            <c:if test="${page.currentIndex != page.totalIndex}">
                                <li><a href="${pageContext.request.contextPath}/toEmployee?start=${page.start + page.count}&currentIndex=${page.currentIndex+1}" aria-label="Next"><span aria-hidden="true">下一页</span></a></li>
                            </c:if>
                            <li><a href="${pageContext.request.contextPath}/toEmployee?start=${page.last}" aria-label="Previous"><span aria-hidden="true">末页</span></a></li>

                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
</script>
</html>
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
            <form action="${pageContext.request.contextPath}/modifyEmp" class="form-horizontal">
                <input type="hidden" class="form-control" name="id" value="${emp.id}">
                <div class="form-group">
                    <label class="col-sm-3 control-label">员工号</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="empId" value="${emp.empId}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">姓名</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="name" value="${emp.name}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">性别</label>
                    <div class="col-sm-3">
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" value="1" <c:if test="${emp.gender==1}"> checked='checked'</c:if> > 男
                            </label>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="radio">
                            <label>
                                <input type="radio"  name="gender" value="0" <c:if test="${emp.gender==0}"> checked='checked'</c:if>> 女
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">邮箱</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="email" value="${emp.email}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">生日</label>
                    <div class="col-sm-7">

                        <input type="text" class="form-control" name="birth"  value="<fmt:formatDate value='${emp.birth}' pattern='yyyy-MM-dd hh:mm' />" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">所属部门</label>
                    <div class="col-sm-7">
                        <select name="deptId" class="selectpicker" style="display:block;height: 40px;font-size: 16px">
                            <c:forEach items="${deptList}" var="dept" >
                                <div class="col-sm-4" >
                                    <option  value="${dept.id}">
                                            ${dept.deptName}
                                    </option>
                                </div>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">确认</button>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/30
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<%--    <script src="js/index.js"></script>--%>
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
                <li>部门管理</li>
                <li>部门信息</li>
            </ol>
            <form action="${pageContext.request.contextPath}/modifyDept" class="form-horizontal" id="updateform">
                <input value="${dept.id}" name="id" hidden>
                <div class="form-group">
                    <label class="col-sm-3 control-label">部门号</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" value="${dept.deptId}" name="deptId">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">部门名称</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control"  value="${dept.deptName}" name="deptName">
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
<script>
    $(function () {
        $(".modifyOperate").click(function () {
            var td = $(".modifyOperate").parent().parent().find('td');
            console.log(td.eq(1).text());
            console.log(td.eq(0).text());
            // $("#update_id_input").val(tr.eq(1).text())
            // $("#update_name_input").val(tr.eq(2).text());
        });
    });
</script>
</html>

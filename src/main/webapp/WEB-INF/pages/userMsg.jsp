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
    <script src="js/jquery-3.5.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/index.css"/>
</head>
<body>
<jsp:include page="topbar.jsp"></jsp:include>

<!-- 主题内容 -->
<div class="container-fluid">
    <div class="row">
        <jsp:include page="leftMenu.jsp"></jsp:include>
        <div class="col-sm-10 page-main">
            <ol class="breadcrumb">
                <li>个人资料</li>
                <li>个人信息</li>
            </ol>
            <form action="${pageContext.request.contextPath}/modifyUserMsg" class="form-horizontal" id="registerForms">
                <input type="hidden" value="${loginUser.id}" name="id">
                <div class="form-group">
                    <label class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-4 register-username-area">
                        <input type="text" name="name" class="form-control" value="${loginUser.name}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">身份</label>
                    <div class="col-sm-3">
                        <div class="radio">
                            <label>
                                <input type="radio" name="identity" value="0"   <c:if test="${loginUser.identity==0}"> checked='checked'</c:if> > 员工
                            </label>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="radio">
                            <label>
                                <input type="radio" name="identity" value="1"  <c:if test="${loginUser.identity==1}"> checked='checked'</c:if>> 管理员
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">手机号</label>
                    <div class="col-sm-4 register-photo-area">
                        <input type="text" name="telNumber" class="form-control" value="${loginUser.telNumber}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">身份证号</label>
                    <div class="col-sm-4 register-idNumber-area">
                        <input type="text"  name="idCard" class="form-control" value="${loginUser.idCard}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">邮箱</label>
                    <div class="col-sm-4 register-email-area">
                        <input type="text" name="email" class="form-control" value="${loginUser.email}">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">取消</button>
                    <button class="btn btn-primary" type="submit">修改</button>
                </div>
            </form>
        </div>

    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

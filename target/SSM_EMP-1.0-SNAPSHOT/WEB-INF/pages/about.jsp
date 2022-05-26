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
            <table class="table table-striped table-bordered text-center"  style="margin-top:80px">
                <tr>
                    <td>开发工具</td>
                    <td>IDEA 2019</td>
                </tr>
                <tr>
                    <td>前端技术</td>
                    <td>Bootstrap</td>
                </tr>
                <tr>
                    <td>框架</td>
                    <td>Spring+Spring MVC+MyBatis</td>
                </tr>
            </table>
        </div>


    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

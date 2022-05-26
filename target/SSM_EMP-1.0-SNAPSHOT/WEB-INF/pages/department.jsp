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
            <form class="form-inline" action="${pageContext.request.contextPath}/searchDept">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入部门名称" name="deptName">
                </div>
                <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-search"></span></button>
            </form>
            <hr>
            <div class="text-center"  style="display:block">
                <button class="btn btn-primary col-sm-1" style="margin-right:10px" data-toggle="modal" data-target="#studentAddModal"><span class="glyphicon glyphicon-plus"  style="margin-right: 10px;"></span>添加</button>
                <button class="btn btn-warning col-sm-1"><span class="glyphicon glyphicon-upload" style="margin-right: 10px;"></span>导出</button>
                <label class="pull-right"  style="margin-right:20px">共有数据${total}条</label>
                <div class="modal fade" id="studentAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel2">添加部门</h4>
                            </div>
                            <div class="modal-body">
                                <form action="${pageContext.request.contextPath}/addDept" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">部门号</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" name="deptId">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">部门名称</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" name="deptName">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                        <button type="submit" class="btn btn-primary">确定</button>
                                    </div>
                                </form>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-bordered text-center"  style="margin-top:80px">
                <thead>
                <tr>
                    <th class="text-center">部门号</th>
                    <th class="text-center">部门名称</th>
                    <th class="text-center">操作</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="dept" items="${deptList}" >
                        <tr>
                            <td>${dept.deptId}</td>
                            <td>${dept.deptName}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/toModifyDept?id=${dept.id}" ><span class="glyphicon glyphicon-pencil"  style="margin-right:10px"></span></a>
                                <a href="${pageContext.request.contextPath}/deleteDept?id=${dept.id}"><span class="glyphicon glyphicon-trash"></span></a>
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
                            <li><a href="${pageContext.request.contextPath}/toDepartment?start=0" aria-label="Previous"><span aria-hidden="true">首页</span></a></li>
                            <c:if test="${page.currentIndex != 1}">
                                <li><a href="${pageContext.request.contextPath}/toDepartment?start=${page.start - page.count}&currentIndex=${page.currentIndex-1}" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
                            </c:if>
                            <c:if test="${page.currentIndex != page.totalIndex}">
                                <li><a href="${pageContext.request.contextPath}/toDepartment?start=${page.start + page.count}&currentIndex=${page.currentIndex+1}" aria-label="Next"><span aria-hidden="true">下一页</span></a></li>
                            </c:if>
                            <li><a href="${pageContext.request.contextPath}/toDepartment?start=${page.last}" aria-label="Previous"><span aria-hidden="true">末页</span></a></li>

                        </ul>
                    </div>
                </form>
            </div>
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

<%--
  Created by IntelliJ IDEA.
  User: yht
  Date: 2021/5/27
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>首页</title>
    <!-- 引入bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <!-- 引入jquery -->
    <script src="js/jquery-3.5.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
<%--    <script src="js/jquery.validate.js"></script>--%>
<%--    <script src="js/index.js"></script>--%>
    <style>
        body {
            height: 100%;
            display: -ms-flexbox;
            display: -webkit-box;
            display: flex;
            -ms-flex-align: center;
            -ms-flex-pack: center;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-image: url(img/bc.jpg);
            /*background-color: #f5f5f5;*/
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
            border: 1px solid grey;
            border-radius: 5%;
            /* opacity: 0.8; */
        }
        /* 提示信息的文字 */
        label.error {
            color: red;
            font-size: 13px;
        }
    </style>
</head>
<body class="text-center main-body">
<form class="form-horizontal form-signin" style="background-color: #ADD8E6" id="loginForms" action="${pageContext.request.contextPath}/main">
    <!-- 头像 -->
    <div class="row">
        <img src="img/person.png" class="col-sm-offset-5 img-circle img-responsive" style="width:60px; height: 60px;" />
    </div>
    <!-- 用户名 -->
    <div class="form-group" style="margin-top: 10px;">
        <label class="col-sm-1 control-label col-sm-offset-1"><span class="glyphicon glyphicon-user"></span></label>
        <div class="col-sm-9 username-area">
            <input type="text" class="form-control" id="inputUsername" placeholder="Username" name="username">
        </div>
    </div>
    <!-- 密码 -->
    <div class="form-group">
        <label class="col-sm-1 control-label col-sm-offset-1"><span class="glyphicon glyphicon-lock"></span></label>
        <div class="col-sm-9 password-area">
            <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password" />
        </div>
    </div>
    <!-- 登录和注册 -->
    <div class="form-group">
        <div class="col-sm-offset-1">
            <button class="btn btn-info col-sm-4 col-sm-offset-1" id="loginBtn" type="submit">登录</button>
            <a class="btn btn-info col-sm-4 col-sm-offset-1" data-toggle="modal" data-target="#registerModal" id="registerBtn">注册</a>
        </div>

    </div>

</form>
<!--Register 提示 -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户注册</h4>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/register" class="form-horizontal" id="registerForms">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户名</label>
                        <div class="col-sm-7 register-username-area">
                            <input type="text" name="name" class="form-control" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">密码</label>
                        <div class="col-sm-7 register-password-area">
                            <input type="password" id="register-password" name="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">确认密码</label>
                        <div class="col-sm-7 register-repeatPassword-area">
                            <input type="password" id="register-repeatPassword" name="rePassword" class="form-control" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份</label>
                        <div class="col-sm-3">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="identity" checked value="0"> 员工
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="identity" value="1"> 管理员
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">手机号</label>
                        <div class="col-sm-7 register-photo-area">
                            <input type="text" name="telNumber" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份证号</label>
                        <div class="col-sm-7 register-idNumber-area">
                            <input type="text"  name="idCard" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">邮箱</label>
                        <div class="col-sm-7 register-email-area">
                            <input type="text" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">取消</button>
                        <button class="btn btn-primary">确认</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


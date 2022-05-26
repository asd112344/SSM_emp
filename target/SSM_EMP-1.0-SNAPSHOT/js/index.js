$(function() {
	$.validator.addMethod("checkEmail", function(value) {
		var email = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		return (email.test(value));
	}, '请输入正确的邮箱');
	$.validator.addMethod("checkPhoto", function(value) {
		var photo = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
		return (photo.test(value));
	}, '请输入正确的手机号');
	$.validator.addMethod("checkIdNumber", function(value) {
		var idNumber = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
		return (idNumber.test(value));
	}, '请输入正确的身份证号');
	$('#loginForms').validate({
		debug: false, //false表示验证通过后不要自动提交表单
		onkeyup: false, //表示关闭按键松开时候监听验证
		rules: { //验证规则
			remote:"${pageContext.request.contextPath}/main",
			username: {
				required: true
			},
			password: {
				required: true
			}
		},
		messages: { //自定义错误信息，默认为英文，除了在这里配置以为，还可以通过配置文件进行配置
			username: {
				required: "用户名不能为空",
			},
			password: {
				required: "密码不能为空"
			}
		},
		submitHandler: function(form) {
			alert("@#!1");
			// $.ajax({
			// 	url:"${pageContext.request.contextPath}/main",
			// 	method:"post",
			// 	data:$('#loginForms').serialize(),
			// 	dataType:'json',
			// 	success:function(ret){
			// 		if(ret.status=='ok'){
			// 			$("#loginForms").html("登录成功！");
			// 			var href = '${pageContext.request.contextPath}/jsp/index.jsp';
			// 			window.top.location.href = href;
			// 		}else if(ret.status=='userNameOrPwdError'){
			// 			$("#loginForms").html("用户名或密码错误！");
			// 		}
			// 	}
			// });
		}
	});
	$('#registerForms').validate({
		debug: false, //false表示验证通过后不要自动提交表单
		onkeyup: false, //表示关闭按键松开时候监听验证
		rules: { //验证规则
			username: {
				required: true, //必填字段
				minlength: 3
			},
			password: {
				required: true,
				minlength: 6,
				maxlength: 18
			},
			rePassword: {
				required: true
			},
			email: "checkEmail",
			photo: "checkPhoto",
			idNumber: "checkIdNumber",
			// id不能重复
		},
		messages: { //自定义错误信息，默认为英文，除了在这里配置以为，还可以通过配置文件进行配置
			username: {
				required: "用户名不能为空",
				minlength: "用户名长度至少为3位"
			},
			password: {
				required: "密码不能为空",
				minlength: "密码长度不能低于6位",
				maxlength: "密码长度不能大于18位"
			},
			rePassword: {
				required: "密码不能为空"
			}

		},
		submitHandler: function(form) {
			alert("验证通过");
		}
	});


});

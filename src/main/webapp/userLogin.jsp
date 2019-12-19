<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,
		maximum-scale=1, user-scalable=no">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
#bottom {
	padding: 20px;
	text-align: center;
	background-color: #eee;
	border-top: 1px solid #ccc;
}

#center {
	width: 500px;
	margin-top: 15%;
	margin-left: auto;
	margin-right: auto;
	height: 450px;
}
;
</style>
</head>
<body>


	<div id="" class="container-fluid">

		<!-- 头部 -->
		<div id="top" class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
			style="height: 80px; background-color: skyblue; font-size: 40px; text-align: center; padding: 12px;">学员日常管理系统</div>
		<%! String userName = ""; %>
		<% 	Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(Cookie cookie:cookies){
					if(cookie.getName().equals("uname")){
					userName = cookie.getValue();
					}	
				}
			}
		%>

		<!-- 中间 -->
		<div id="center">
			<form class="form-horizontal" action="" method="post"
				id="form-info">

				<!-- 用户名div -->
				<div class="form-group">
					<label class="col-md-4 col-sm-4 control-label">用户名</label>
					<div class="col-md-8 ">
						<input type="text" class="form-control" required="required"
							name="userName" value=<%=userName %>>
					</div>
				</div>

				<!-- 密码div-->
				<div class="form-group">
					<label class="col-md-4 col-sm-4 control-label">密&nbsp&nbsp&nbsp码</label>
					<div class="col-md-8 ">
						<input type="password" class="form-control" required="required"
							name="userPwd">
					</div>
				</div>
				
				<!-- 验证码 -->
				<div class="form-group">
					<label class="col-md-4 col-sm-4 control-label">验证码</label>
					<!-- 验证码输入框 -->
					<div class="col-md-4 ">
						<input type="text" class="form-control" required="required"	name="checkCode">
					</div>
					<!-- 验证码 -->
					<div class="col-md-4">
						<img  src="checkCode.do" onclick="this.src= 'checkCode.do?t'+Math.random()">
					</div>
				</div>
				
				
				<!-- 登录 -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-6">
						<input type="submit" class="btn btn-info" id="loginButton" value="登录" />
					    <input type="reset" class="btn btn-info" value="取消" />
					    <a href="stuLogin.jsp" class="btn btn-info">学生登录</a>
					</div>
				</div>
			</form>
		</div>

		<div id="bottom" class="container-fluid"
			style="height: 80px; background-color: skyblue; font-size: 20px; text-align: center; padding: 12px;">
			<p>陕 ICP 备 12345678. © 2015-2019 蜗牛学院. Powered by Bootstrap.</p>
		</div>

	</div>
	<script src="js/jquery-1.12.3.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$("#loginButton").click(function(){
			$.ajax({
				cache:false,
				type:"post",
				url:"checkCheckCode.do",
				async:true,
				data:{"checkCode":$(":text[name=checkCode]").val()},
				error:function(data){
				},
				success:function(data){
					if(data=="true"){
						$("#form-info").submit();
					}else{
						alert("验证码错误");
					}
				}
			});
			return false;
		})
	
	</script>
</body>
</html>

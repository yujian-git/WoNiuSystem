<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="yj" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<style type="text/css">
#top {
	height: 100px;
	text-align: center;
	background-color: ghostwhite;
}

#left {
	height: 620px;
	border: 1px solid black;
}

#right {
	height: 620px;
}

#bottom {
	text-align: center;
	line-height: 50px;
	height: 50px;
	background-color: ghostwhite;
}
</style>
</head>
<body>
	<div class="container-fluid">


		<!-- 顶部 -->
		<div class="row">
			<div class="col-md-12" id="top">
				<h1>学员日常管理系统</h1>
				<h6 align=right>用户<font size=4px>
				
				<!-- 显示当前登录的用户 -->
				<yj:choose>
					<yj:when test="${empty sessionScope.userName}">
						<yj:redirect url="login.jsp"/>
					</yj:when>
					<yj:otherwise>
						${sessionScope.userName}
					</yj:otherwise>
				</yj:choose>
				</font>在线&nbsp&nbsp&nbsp<a href="exit.do">安全退出</a>
				
			</div>
		</div>


		<!-- 中间 -->
		<div class="row">
			<!-- 左边-->
			<div class="col-md-3 col-sm-3 col-xs-3" id="left">
					<!-- 教学主管模块 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"> 教学主管管理 </a>
							</h4>
						</div>
						
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul>
									<li><a href="#" target="ifs">班级管理</a></li>
								
									<li><a href="#" target="ifs">考勤管理</a></li>

									<li><a href="#" target="ifs">考试管理</a></li>
								</ul>
							</div>
						</div>
						
					</div>

					<!-- 教师模块-->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"> 教师管理 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul>
									<li><a href="#" target="ifs">考勤管理</a></li>
									<li><a href="#" target="ifs">班级管理</a></li>
									<li><a href="#" target="ifs">成绩管理</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<!-- 班主任模块 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"> 班主任管理 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul>
									<li><a href="#" target="ifs">学生管理</a></li>
									<li><a href="#" target="ifs">考勤管理</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<!-- 学员模块 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"> 学员管理 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul>
									<li><a href="#" target="ifs">出勤信息</a></li>
									<li><a href="#" target="ifs">成绩信息</a></li>
									<li><a href="#" target="ifs">个人信息</a></li>
								</ul>
							</div>
						</div>
					</div>
			
			
			
			</div>
			
			<!-- 右边-->
			<div class="col-md-9 col-sm-9 col-xs-9" id="right">
				<iframe name="ifs" width="100%" height="100%"></iframe>
			</div>
		</div>
		
		<!-- 底部 -->
		<div class="row" id="bottom">
			<div class="col-md-12">© 2019&nbsp&nbsp当前在线人数：${applicationScope.online}</div>
		</div>
	</div>

	<script src="js/jquery-1.12.3.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
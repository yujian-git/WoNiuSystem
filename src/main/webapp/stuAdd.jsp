<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<form class="form-horizontal" role="form" style="width: 550px; margin: 10px auto;" action="addGoods.do" method="post" enctype="multipart/form-data">
		<!-- 学生姓名 -->
		<div class="form-group">
			<label for="goodsType" class="col-sm-3 control-label">学生姓名:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsType" placeholder="请输入学生姓名" name="goodsType">
			</div>
		</div>
		
		<!-- 学生身份证号码 -->
		<div class="form-group">
			<label for="goodsSupplier" class="col-sm-3 control-label">身份证号:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsSupplier" placeholder="请输入学生身份证号码" name="goodsSupplier">
			</div>
		</div>

		<!-- 学生联系电话 -->
		<div class="form-group">
			<label for="goodsCode" class="col-sm-3 control-label">联系电话:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCode"	placeholder="请输入请输入联系电话" name="goodsCode">
			</div>
		</div>

		<!-- 学生地址 -->
		<div class="form-group">
			<label for="goodsName" class="col-sm-3 control-label">联系地址:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsName" placeholder="请输入联系地址" name="goodsName">
			</div>
		</div>
		
		<!-- 毕业时间 -->
		<div class="form-group">
			<label for="goodsCount" class="col-sm-3 control-label">毕业时间:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCount" placeholder=请输入毕业时间 name="goodsCount">
			</div>
		</div>
		
		<!-- 所在班级 -->
		<div class="form-group">
			<label for="goodsCount" class="col-sm-3 control-label">所在班级:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCount" placeholder=请输入所在班级 name="goodsCount">
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-3 control-label"></label>
			<div class="col-sm-9">
				<input type="submit" class="btn btn-info col-sm-12" value="保存" />
		</div>
		</div>
	</form>

	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
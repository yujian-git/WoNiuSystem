<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改学生信息</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<form class="form-horizontal" role="form" style="width: 550px; margin: 10px auto;" action="addGoods.do" method="post" enctype="multipart/form-data">
		<!-- 学生姓名 -->
		<div class="form-group">
			<label for="goodsType" class="col-sm-3 control-label">学生姓名:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsType"  name="goodsType">
			</div>
		</div>
		
		<!-- 学生身份证号码 -->
		<div class="form-group">
			<label for="goodsSupplier" class="col-sm-3 control-label">身份证号:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsSupplier"  name="goodsSupplier">
			</div>
		</div>

		<!-- 学生联系电话 -->
		<div class="form-group">
			<label for="goodsCode" class="col-sm-3 control-label">联系电话:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCode" name="goodsCode">
			</div>
		</div>

		<!-- 学生地址 -->
		<div class="form-group">
			<label for="goodsName" class="col-sm-3 control-label">联系地址:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsName"  name="goodsName">
			</div>
		</div>
		
		<!-- 毕业时间 -->
		<div class="form-group">
			<label for="goodsCount" class="col-sm-3 control-label">毕业时间:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCount"  name="goodsCount">
			</div>
		</div>
		
		<!-- 所在班级 -->
		<div class="form-group">
			<label for="goodsCount" class="col-sm-3 control-label">所在班级:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsCount"  name="goodsCount">
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
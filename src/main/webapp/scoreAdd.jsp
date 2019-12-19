<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生成绩</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<form class="form-horizontal" role="form" style="width: 550px; margin: 10px auto;" action="addGoods.do" method="post" enctype="multipart/form-data">
		<!-- 学生姓名 -->
		<div class="form-group">
			<label for="goodsType" class="col-sm-3 control-label">姓名:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsType" placeholder="请输入学生姓名" name="stuName">
			</div>
		</div>
		
		<!-- 学生成绩 -->
		<div class="form-group">
			<label for="goodsSupplier" class="col-sm-3 control-label">成绩:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="goodsSupplier" placeholder="请输入学生成绩" name="stuScore">
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
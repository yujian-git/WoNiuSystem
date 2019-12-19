<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		<form class="form-horizontal" role="form" style="width: 550px; margin: 10px auto;" action="clazzAdd.action" method="post" enctype="multipart/form-data">
			<!-- 班级类型 -->
			<div class="form-group">
				<label for="clazzType" class="col-sm-3 control-label">班级类型:</label>
				<div class="col-sm-9">
					<select name="clazzType" class="form-control" >
						
										    		<option value="开发">开发</option>					    							    		
										    		<option value="测试">测试</option>					    							    											    			    							    		
				    </select>
				</div>
			</div>
			
			<!-- 商品供应商 -->
			<div class="form-group">
				<label for="clazzName" class="col-sm-3 control-label">班级名称:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="clazzName" placeholder="请输入班级名称" name="clazzName">
				</div>
			</div>
	
			<!-- 商品编码 -->
			<div class="form-group">
				<label for="levelId" class="col-sm-3 control-label">阶段:</label>
				<div class="col-sm-9">
					<select name="levelId" class="form-control" >										    											    					    	
										    		<option value="1">第一阶段</option>					    							    		
										    		<option value="2">第二阶段</option>
													<option value="3">第三阶段</option>
													<option value="4">第四阶段</option>																																																					
					</select>
				</div>
			</div>
	
			<!-- 商品名称 -->
			<div class="form-group">
				<label for="userId" class="col-sm-3 control-label">教师:</label>
				<div class="col-sm-9">
					<select name="userId" class="form-control" >										    											    					    	
										    		<option value="1">xxx</option>					    							    		
										    		<option value="2">xxx</option>
													<option value="3">xxx</option>
													<option value="4">xxx</option>																																																					
					</select>
				</div>
			</div>
			
			<!-- 商品数量 -->
			<div class="form-group">
				<label for="roleId" class="col-sm-3 control-label">班主任:</label>
				<div class="col-sm-9">
					<select name="roleId" class="form-control" >										    											    					    	
										    		<option value="1">xxx</option>					    							    		
										    		<option value="2">xxx</option>
													<option value="3">xxx</option>
													<option value="4">xxx</option>																																																				
					</select>
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
	
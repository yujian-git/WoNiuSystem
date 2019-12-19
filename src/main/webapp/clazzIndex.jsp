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
		<form action="goods.do" name="productsForm" method="post">
			<div style="width: 800px; margin: 30px auto 10px; text-align: right;">
				<!-- 放产品查询框的div -->
				<div class="col-md-10">
						产品名称：<input type="text" name="goodsCode" value=${requestScope.goodsSearchInfo.goods_code }> 
						产品规格：<input type="text" name="goodsName" value=${requestScope.goodsSearchInfo.goods_name }> 
						<input type="submit" class="btn btn-info" value="查询" />
				</div>
				
				<!-- 放查增加的div -->
				<div class="col-md-2">
					<a href="addGoods.jsp" class="btn btn-info">增加<span
						class="glyphicon glyphicon-plus"></span></a>
				</div>
				
			</div>
	
		
			<table class="table table-bordered table-striped table-hover table-condensed" style="width: 800px; margin: 20px auto">
				<!-- 头部 -->
				<thead>
					<tr>
						<th>序号</th>
						<th>班级类型</th>
						<th>班级名称</th>
						<th>班级阶段</th>
						<th>教师</th>
						<th>班主任</th>						
						<th>操作</th>
					</tr>
				</thead>
				<!-- 身体 -->
				<tbody>
					<yj:forEach items="${clazzs}" var="c">
						<tr>
							<td>${c.count}</td>
							<td>${c.clazzType}</td>
							<td>${c.clazzName}</td>
							<td>${c.levelId.levelName}</td>
							<td>${c.userId.UserName}</td>
							<td>${c.roleId.}</td>										
							<td>
								<a href="updateProduct.do?product_id=${pb.goods_id}%>" class="btn btn-info btn-xs">修改</a>
								<a href="deleteProduct.do?product_id=${pb.goods_id}%>" class="btn btn-danger btn-xs">删除</a>
							</td>
						</tr>
					</yj:forEach>
					
					<tr align="center">
						<td colspan=7>
							<a href="javascript:goPage(1)">首页</a>
							<a href="javascript:goPage(${requestScope.pageInfo.currentPage - 1})">上一页&nbsp&nbsp</a>
							<yj:forEach begin="1" end="${requestScope.pageInfo.pages}" var="pageNumber">
								<yj:choose>
									<yj:when test="${requestScope.pageInfo.currentPage==pageNumber}">
										${pageNumber}
									</yj:when>
									<yj:otherwise>
										<a href="javascript:goPage(${pageNumber})">${pageNumber}</a>
									</yj:otherwise>
								</yj:choose>
							</yj:forEach>
							
							<a href="javascript:goPage(${requestScope.pageInfo.currentPage - 1})">下一页&nbsp&nbsp</a>
							<a href="javascript:goPage(${requestScope.pageInfo.pages})">尾页&nbsp&nbsp</a>
							共${requestScope.pageInfo.pages}页&nbsp&nbsp 共${requestScope.pageInfo.totalCount}条数据&nbsp&nbsp&nbsp&nbsp
							每页显示条目数<input type="number" value="${requestScope.pageInfo.pageSize}" name="pageSize" onchange="goPage(1)">
						</td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" name="currentPage"
				value="${requestScope.pageInfo.currentPage}">
		</form>
		<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function goPage(currentPageValue) {
				productsForm.currentPage.value = currentPageValue;
				//让表单提交
				productsForm.submit();
			}
		</script>
	</body>
	</html>

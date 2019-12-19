<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="yj" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有学生</title>
<link href="css/bootstrap.min.css" type="text/css" rel="styleSheet" />
</head>
<body>
    
   
    <form action="stu.do" method="post" >          
       
	<div style="width: 800px; margin: 20px auto; text-align: right;">
		<a href="usersAdd.jsp" class="btn btn-info ">增加学生
		    <span class="glyphicon glyphicon-plus"></span>
        </a>
	</div>
	
	<table class="table table-bordered table-striped table-hover table-condensed" style="width: 600px;" align="center">
		<thead>
			<tr class="success" >
				
				<th align="center">学生id（隐藏域）</th>
				<th align="center">学生姓名</th>
				<th align="center">身份证号</th>
				<th align="center">操作</th>
				
			</tr>
		</thead>

		<tbody>
		     
            <yj:forEach items="${list}" var="stu">
			<tr align="center">
			
                <td>${i.user_name}</td>
				<td>${i.user_role}</td>
				<td>${i.user_status}</td>
				
				<td>
				   
					<a href="#" class="btn btn-info btn-xs">修改</a>
					<yj:if test="${i.user_status=='停用'}">
						
						<a href="usersStart.do?usersId=${i.user_Id}" class="btn btn-success btn-xs">启用</a>
					</yj:if>
					<yj:if test="${i.user_status=='启用'}">
						<a href="usersStop.do?usersId=${i.user_Id}" class="btn btn-danger btn-xs">停用</a>
                	</yj:if>
                </td>
			</tr>

			</yj:forEach>
 		
		</tbody>

    </table>
   
    </form>
    
	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
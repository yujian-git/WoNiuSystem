<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="yj" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link href="css/bootstrap.min.css" type="text/css" rel="styleSheet" />
</head>
<body>
    
   
    <form action="users.do" method="post" >          
       
	<div style="width: 800px; margin: 20px auto; text-align: right;">
		    <span class="glyphicon glyphicon-plus"></span>
        </a>
	</div>
	
	<table class="table table-bordered table-striped table-hover table-condensed" style="width: 600px;" align="center">
		<thead>
			<tr class="success" >
				<th align="center">学员姓名</th>
				<th align="center">身份证号码</th>
				<th align="center">联系电话</th>
				<th align="center">联系地址</th>
				<th align="center">毕业时间</th>
				<th align="center">班级</th>
			</tr>
		</thead>

		<tbody>
		     
			<tr align="center">
			
                <td>${student.stuName}</td>
				<td>${student.stuIdcard}</td>
				<td>${student.stuPhone}</td>
				<td>${student.stuAddress}</td>
				<td>${student.stuGradTime}</td>
				<td>${student.clazz.clazzName}</td>
			</tr>

 		
		</tbody>

    </table>
   
    </form>
    
	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
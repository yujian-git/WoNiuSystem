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
				<th align="center">考勤记录</th>
				<th align="center">学员姓名</th>
				<th align="center">日期</th>
				<th align="center">考勤类型</th>
				
			</tr>
		</thead>

		<tbody>
		     
			<tr align="center">
			
                <td>${attendanceRecord.attendanceRecordId}</td>
				<td>${attendanceRecord.student.stuName}</td>
				<td>${attendanceRecord.attendanceRecordDate}</td>
				<td>${attendanceRecord.attendance.attendanceName}</td>
			</tr>

 		
		</tbody>

    </table>
   
    </form>
    
	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
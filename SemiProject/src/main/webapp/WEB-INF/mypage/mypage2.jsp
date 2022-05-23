<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1>순위</h1>
	
	<div class="section" id="section6">
		<!-- example -->
		<h1>My Menu List</h1>
		<br><br>
		<h3>${list}</h3>
		<table class="table table-bordered mytable" style="width: 1100px;">
			<tr style="background-color:#ffc;">
				<th class="text-center" style="width: 50px">No.</th>
				<th class="text-center" style="width: 500px">Menu</th>
				<th class="text-center" style="width: 70x">Category</th>
				<th class="text-center" style="width: 70x">Count</th>
			
			</tr>
			<c:forEach var="dto" items="${list}" varStatus="i">
				<tr>
					<td>${i.count}</td>
					
					<!-- 메뉴이름 -->
					<td>${dto.menu_name}</td>
					<!-- 분류 -->
					<td>카테고리</td>
					<!-- 횟수 -->
					<td>${dto.count}</td>	
				</tr>
			</c:forEach>	
		</table>
	
		<!-- <div class="mymenulist">
			<b>1등</b> <b>김밥</b> <b>한식</b> <b>32회</b>
		</div>
		<div class="mymenulist">
			<b>2등</b><b>초밥</b><b>일식</b> <b>24회</b>
		</div>
		<div class="mymenulist">
			<b>3등</b><b>마라탕</b><b>중식</b><b>8회</b>
		</div> -->
		<div class="mymenulistmore">
			<p>See More</p>
		</div>	
	</div>
</body>
</html>
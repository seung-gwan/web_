<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량 정보</title>
</head>
<body>
<form>
<table>
     
	<tr>
		<td>차종</td>
		<td>${Carinfo_view.member_car }</td>
	</tr>
	<tr>
		<td>차량 번호</td>
		<td>${Carinfo_view.car_Num }</td>
	</tr>
	<tr>
		<td>주행거리</td>
		<td>${Carinfo_view.car_kM }</td>
	</tr>	
	<tr>
		<td>생산년도</td>
		<td>${Carinfo_view.car_ProductY }</td>
	</tr>
	<tr>
		<td>색상</td>
		<td>${Carinfo_view.car_color }</td>
	</tr>
	<tr>
		<td>제조사</td>
		<td>${Carinfo_view.car_brand }</td>
	</tr>
	<tr>
		<td>타입</td>
		<td>${Carinfo_view.car_type }</td>
	   
	  
	</tr>
	<tr>
		<td>사고 유/무</td>
		<td>${Carinfo_view.car_Accident }</td>
	</tr>
	<input type="hidden" name="member_id" value="${sessionID }">
	<tr>
	    <c:if test= "${Carinfo_view.car_Num == null }">
		<td><a href ="CarInfo_insert.jsp">정보등록</a></td>
		</c:if>
		<c:if test= "${Carinfo_view.car_Num !=null }">
		<td><a href ="CarInfo_modify.jsp">정보수정</a></td>	
		</c:if>
		
	</tr>
</table>
</form>
</body>
</html>
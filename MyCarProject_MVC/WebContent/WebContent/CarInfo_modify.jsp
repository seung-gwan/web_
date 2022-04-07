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
<form action ="Carinfo_modify.do" method="post">
<table>
        
	<tr>
		<td>차종<input type="hidden" name="member_id" value="${sessionID }"></td>
		<td><input type="text" name="member_car"></td>
		
	</tr>
	<tr>
		<td>차량 번호</td>
		<td><input type="text" name="car_Num"></td>
	</tr>
	<tr>
		<td>주행거리</td>
		<td><input type="text" name="car_kM"></td>
	</tr>	
	<tr>
		<td>생산년도</td>
		<td><input type="text" name="car_ProductY"></td>
	</tr>
	<tr>
		<td>색상</td>
		<td><input type="text" name="car_color"></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><input type="text" name="car_brand"></td>
	</tr>
	<tr>
		<td>타입</td>
		<td><input type="radio" name="car_type" value="경차" id="SS">경차</td>
	    <td><input type="radio" name="car_type" value="소형" id="S">소형</td>
   	    <td><input type="radio" name="car_type" value="중형" id="M">중형</td>
  	    <td><input type="radio" name="car_type" value="대형" id="L">대형</td>
	  
	</tr>
	<tr>
		<td>사고 유/무</td>
		<td><input type="radio" name="car_Accident" value="Yes" id="yes">Y</td>
		<td><input type="radio" name="car_Accident" value="No" id="no">N</td>
	</tr>
	<tr>
		<td><input type="submit" value="확인"> </td>
	</tr>
</table>
</form>
</body>
</html>
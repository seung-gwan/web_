<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매 신청</title>
</head>
<body>
<form action="SellList_update.do?sNum=${SellList_detail.sNum }" method="post">
	<table>
	
	<tr>
		<td>차종</td>
		<td>${SellList_detail.sCar }</td>
	</tr>
	<tr>
		<td>차량번호</td>
		<td>${SellList_detail.sCar_Num }</td>
	</tr>
	<tr>
		<td>주행거리</td>
		<td>${SellList_detail.sCar_kM }</td>
	</tr>
	<tr>
		<td>생산년도</td>
		<td>${SellList_detail.sCar_ProductY }</td>
	</tr>
	<tr>
		<td>색상</td>
		<td>${SellList_detail.sCar_color }</td>
	</tr>
	<tr>
		<td>브랜드</td>
		<td>${SellList_detail.sCar_brand }</td>
	</tr>
	<tr>
		<td>타입</td>
		<td>${SellList_detail.sCar_type }</td>
	</tr>
	<tr>
		<td>사고유/무</td>
		<td>${SellList_detail.sCar_Accident }</td>
	</tr>
	<tr>
		<td>원가</td>
		<c:if test="${SellList_detail.sCar_Price == 0 }">
		<td><input type="text" name="sCar_Price"></td>
		</c:if>
		<c:if test="${SellList_detail.sCar_Price != 0 }">
		<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${SellList_detail.sCar_Price }" /></td>
		</c:if> 
	</tr>
	<tr>
		<td>할인가</td>
		<c:if test="${SellList_detail.sCar_salePrice == 0 }">
		<td><input type="text" name="sCar_salePrice"></td>
		</c:if>
		<c:if test="${SellList_detail.sCar_salePrice != 0 }">
		<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${SellList_detail.sCar_salePrice }" /></td>
		</c:if> 
	</tr>
	<tr>
	<c:if test="${SellList_detail.sCar_Price == 0 }">
		<td><input type="submit" value="추가"></td>
	</c:if>
	</tr>
	</table>
	<a href = "index.jsp">홈으로</a>
</form>



</body>
</html>
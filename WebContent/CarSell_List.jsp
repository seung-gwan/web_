<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내판매목록</title>
</head>
<body>
<h1>전체 판매목록</h1>
<form>
<table>
	<thead>
                <tr>
                  <th scope="col" class="title">차량넘버</th>
                  <th scope="col" class="write">차종</th>
                  <th scope="col" class="write">주행거리</th>
                  <th scope="col" class="date">브랜드</th>    
                 
                </tr>
	</thead>



	 <c:forEach items="${SellList}" var="dto"> 
              <tbody>
               
                <tr>
                  <td class="listTitle"><div><a href="SellList_detail.do?sNum=${dto.sNum}">${dto.sCar_Num }</a></div></td>
                  <td>${dto.sCar }</td>
                  <td>${dto.sCar_kM }</td>
                  <td>${dto.sCar_brand }</td>
                </tr>
                
              </tbody> 
      </c:forEach>
</table>
</form>

</body>
</html>
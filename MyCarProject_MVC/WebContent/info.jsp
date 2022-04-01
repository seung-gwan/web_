<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table width="500" cellpadding ="0" cellspacing="0" border="1">
   <form>
   <input type="hidden" name="member_id" value="${infoList_view.member_id }">
		<tr>
			<td>아이디</td>
			<td>${infoList_view.member_id }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${infoList_view.member_pw } </td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${infoList_view.member_name } </td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${infoList_view.member_address} </td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td>${infoList_view.member_address_num} </td>
		</tr>
		<tr>
			<td>상세주소1</td>
			<td>${infoList_view.member_address_detail1} </td>
		</tr>
		<tr>
			<td>상세주소2</td>
			<td>${infoList_view.member_address_detail2}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${infoList_view.member_gender}</td>
		</tr>
		<tr>
			<td>차종</td>
			<td>${infoList_view.member_car}</td>
		</tr>
		<tr>
			<td>이메일주소</td>
			<td>${infoList_view.member_email}</td>
		</tr>
		<tr>
			<td colspan="2"><a href="info_modfiy_view.do?member_id=${sessionID }">회원정보 수정</a>
		</tr>
	
	</form>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginSuccess.jsp</title>
<script type="text/javascript">
	function updateUser(){
		document.updateForm.action="editForm.do";
		document.updateForm.submit();		
	}
	
	function deleteUser(){
		document.deleteForm.action="memberDelete.do";
		document.deleteForm.submit();
	}
	
</script>
</head>
<body>
${memberDto.mem_nick}님 저희 홈에 오신것을 환영합니다. <br>

<!--  EL, JSTL 사용 -->

<c:set var="mem_id" value="${memberDto.mem_id}" scope="session"/>

<a href="cam_list.do">게시판 글 목록</a><br>
<a href="javaScript:updateUser()">회원 정보 수정</a><br>
<a href="javaScript:deleteUser()">회원 탈퇴</a><br>
<a href="logOut.do">로그아웃</a><br>

<form name="updateForm" method="post">
	<input type="hidden" name="mem_id" id="mem_id" value="${mem_id}">
</form>

<form name="deleteForm" method="post">
	<input type="hidden" name="mem_id" id="mem_id" value="${mem_id}">
</form>
</body>
</html>
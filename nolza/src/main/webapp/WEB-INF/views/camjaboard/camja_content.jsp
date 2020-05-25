<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>camja_content.jsp</title>
	<style type="text/css">
	body{background-color:##7fffd4; }
	h2{text-align:center;}
	table{margin: auto;
	line-height: 25px;
	width: 60%;
	}
	a{text-decoration: none; color:#6c6c6c;}
	a:hover{color:#f2216b;}
	#content{text-align:left;}
	</style>
</head>
<body >
<div ><h2>글 내용 보기</h2></div>
<table border="1" >
	<tr>
		<td>글번호</td>
		<td>${dto.camja_no}</td>
		<td>조회수</td>
		<td>${dto.camja_readcount }</td>
	</tr>
	<tr>
		<td>글쓴이</td>
		<td>${dto.camja_id}</td>
		<td>작성일</td>
		<td>		
		<fmt:formatDate value="${dto.camja_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</td>
	</tr>
	<tr>
		<td>글제목</td>
		<td colspan="3">${dto.camja_title}</td>
	</tr>
	<tr >
		<td>글내용</td>
		<td colspan="3" id="content" >
		<pre>
		${camja_content}  <!-- ******************** -->
		</pre>
		</td>
	</tr>
	
	<tr>
		<td colspan="4" align="center">
		<input type="button" value="글수정" onclick="document.location.href='camja_updateForm.do?camja_no=${dto.camja_no}&pageNum=${pageNum}'"/>
		<input type="button" value="글삭제" onclick="document.location.href='camja_delete.do?camja_no=${dto.camja_no}&pageNum=${pageNum}'"/>
		<input type="button" value="답글쓰기" onclick="document.location.href='camja_writeForm.do?camja_no=${dto.camja_no}&camja_group=${dto.camja_group}&camja_step=${dto.camja_step}&camja_indent=${dto.camja_indent}'"/>
		<input type="button" value="글목록" onclick="document.location.href='camja_list.do?pageNum=${pageNum}'"/>
		</td>
	</tr>
	
	
</table>
</body>
</html>
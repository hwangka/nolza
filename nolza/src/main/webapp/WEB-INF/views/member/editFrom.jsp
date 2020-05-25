<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editFrom.jsp</title>

<script type="text/javascript">
function check(){
	 
	if($('#mem_id').val()==''){
		alert("아이디를 입력 해주세요");
		$('#mem_id').focus();
		return false;
	}
	
	if($('#mem_pw').val()==''){
		alert("암호 를 입력 해주세요");
		$('#mem_pw').focus();
		return false;
	}
	
	if($('#mem_nick').val()==''){
		alert("닉네임을 입력 해주세요");
		$('#mem_nick').focus();
		return false;
	}
	
	if($('#mem_email').val()==''){
		alert("이메일 주소를 입력 해주세여~");
		$('#mem_email').focus();
		return false;
	}
	return true;
}//check() end
</script>

</head>
<body>
	<h2><center>회원정보 수정</center></h2>
	<form method="post" action="editPro.do" onSubmit="return check()">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" id="mem_id" name="mem_id" size="20" value="${memberDto.mem_id}" readonly></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="mem_pw" name="mem_pw" size="20" value="${memberDto.mem_pw}" readonly></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" id="mem_nick" name="mem_nick" size="30" value="${memberDto.mem_nick}" ></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" id="mem_email" name="mem_email" size="40" value="${memberDto.mem_email}" ></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="회원정보수정">
					<input type="reset" value="취소" onClick="location='login.do'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
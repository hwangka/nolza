<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertForm.jsp</title>

<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>


<script type="text/javascript">
	function check() {

		if ($('#mem_id').val() == '') {
			alert("아이디를 입력해 주세요");
			$('#mem_id').focus();
			return false;
		}

		if ($('#mem_pw').val() == '') {
			alert("암호 를 입력해주세요");
			$('#mem_pw').focus();
			return false;
		}
		if ($('#mem_pw2').val() == '') {
			alert("암호를 한번 더 입력 해주세요");
			$('#mem_pw2').focus();
			return false;
		}

		if ($('#mem_pw').val() != $('#mem_pw2').val()) {
			alert("암호가 일치하지 않습니다");

			$('#mem_pw').val('').focus();
			$('#mem_pw2').val('');
			return false;
		}

		if ($('#mem_nick').val() == '') {
			alert("닉네임을 입력 하시요");
			$('#mem_nick').focus();
			return false;
		}

		if ($('#mem_email').val() == '') {
			alert("이메일을 입력 하시요");
			$('#mem_email').focus();
			return false;
		}

		return true;
	}//check() end

	
</script>
</head>
<body>
<body>
	<form method="post" name="writeForm" action="insertPro.do" onSubmit="return check()">
		<table>
			<tr>
				<td colspan="2" height="30" align="center">
				<b>Welcome!!! 회원가입을 환영합니다. </b>
				</td>
			</tr>
			<tr> </tr>
			<tr>
				<td width="20%">아이디</td>
				<td><input type="text" id="mem_id" name="mem_id" size="10" />
				<input type="button" id="btn" value="id중복체크" onClick="idCheck()" class="idCheck">
				</td>	
			</tr>
			<tr class="result" >
			<td class="msg" align="center" colspan="2">아이디 중복체크를 해주세요 </td>
			</tr><tr> </tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="mem_pw" name="mem_pw" size="20" /></td>
			</tr><tr> </tr>

			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" id="mem_pw2" name="mem_pw2"
					size="20" /></td>
			</tr><tr> </tr>

			<tr>
				<td>닉네임</td>
				<td><input type="text" id="mem_nick" name="mem_nick" size="20" /></td>
			</tr><tr> </tr>


			<tr>
				<td>이메일</td>
				<td><input type="text" id="mem_email" name="mem_email"
					size="30" /></td>
			</tr><tr> </tr>


			<tr>
				<td colspan="2" align="center">
				<input type="submit"value="회원가입" id="submit" disabled="disabled">
				<input type="reset" value="다시입력">
				<input type="button" value="가입안함" onClick="location='login.do'"></td>
			</tr>

		</table>
	</form>
<!-- //------------------------
	// ajax 이용하여 id사용 여부 체크 
	//------------------------
	function idCheck() {
		//alert("aaa")

		if ($('#mem_id').val() == '') {
			alert("아이디를 입력 해주세요");
			$('$mem_id').focus();
		} else {
			$.ajax({
				type : 'POST',
				url : 'idCheck.do',
				data : "mem_id=" + $("#mem_id").val(),
				dataType : 'JSON',
				cache : false,
				async : true,
				success : function(data) {//콜백
					if (data.check == 1) {
						alert("사용가능한 아이디 입니다.");
						$("mem_pw").focus();
					} else {
						alert("사용중인 아이디 입니다.");
						$('#mem_id').val("").focus();
						$(".result .msg").attr("style", "color:#f00");
					}
				}//success:function end
			});
		}//else end 

	}//idCheck() end -->
	
	<script>
		$(".idCheck").click(function() {
			var query = {
				mem_id : $("#mem_id").val()
			};

			$.ajax({
				url : 'idCheck.do',
				type : "POST",
				data : query,
				dataType : 'JSON',
				cache : false,
				async : true,
				success : function(data){
					if(data.check == 1){
						$(".result .msg").text("사용 가능한 아이디 입니다.");
						$(".result .msg").attr("style", "color:#00f");
						$("#submit").removeAttr("disabled");
						$("#mem_pw").focus();
					}else{
						$(".result .msg").text("사용 불가  이미 사용중인 아이디입니다.");
						$(".result .msg").attr("style", "color:#f00");
						$("#submit").attr("disabled", "disabled");
						$('#mem_id').val("").focus();
						
					}
				}
			}); // ajax 끝
		});
		// 아이디 중복체크 해서 서브밋 버튼이 활성화 된 이후 다시 아이디 변경하는 것을 방지 하기 위한 기능 
		$("#mem_id").keyup(function(){
			 $(".result .msg").text("아이디를 확인해주십시오.");
			 $(".result .msg").attr("style", "color:#000");
			 
			 $("#submit").attr("disabled", "disabled");
			 
			});
		
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	span{
		color: red;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Co Com 회원가입</title>
<%
	
%>
</head>
<body>
	<h1>Co Com</h1>
	<form action="signup.test" method="post">
		이메일 : <input type="email" name="email" id="email"> *<span id="e">이메일 형식이 잘못 되었습니다.</span><br> 
		비밀번호 : <input type="password" name="password" id="password"> *<span id="p">비밀번호는 필수 입력 요소입니다.</span><br>
		<font size="1">*비밀번호는 8자리이상~12자리 이하여야 합니다.</font><br>
		비밀번호 재확인: <input type="password" name="passwordck" id="passwordck">&nbsp;&nbsp;&nbsp;
			<input type="button" id="pwckbtn" value="비밀번호 확인">&nbsp;&nbsp;<span id="pck">비밀번호가 일치하지 않습니다.</span>
	<br> 이름 : <input type="text" name="name" id="name"> *<span id="n">이름은 필수 입력 요소입니다.</span><br> 
	휴대폰번호 : <select name="firstnum" id="firstnum">
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>018</option>
			<option>017</option>
		</select> - <input type="text" name="middlenum" id="middlenum"> - <input type="text"
			name="lastnum" id="lastnum"><br>
			*은 필수 입력 요소입니다.<br> 
			<input type="submit" name="signup" value="완료" id="subbtn"><input type="reset" name="cancel" value="취소">
	</form>
	
	<script src="resources/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#e').hide();
			$('#p').hide();
			$('#n').hide();
			$('#pck').hide();
		});
		
		$('#pwckbtn').on('click', function(){
			var pass = $('#password').val();
			var passck = $('#passwordck').val();
			
			if(passck == ''){
				$('#pck').text('비밀번호는 8자리 이상 12자리 이하여야 합니다.');
				$('#pck').css('color', 'red');
				$('#pck').show();
			}
			else if(pass != passck){
				$('#pck').text('비밀번호가 일치하지 않습니다.');
				$('#pck').css('color', 'red');
				$('#pck').show();
			}
			else{
				$('#pck').text('일치합니다');
				$('#pck').css('color', 'green');
				$('#pck').show();
			}
		});
	
		$('#subbtn').on('click', function(e){
			var email = $('#email').val();
			var password = $('#password').val();
			var name = $('#name').val();
			var firstnum = $('#firstnum').val();
			var middlenum = $('#middlenum').val();
			var lastnum = $('#lastnum').val();
			$('#e').hide();
			$('#p').hide();
			$('#n').hide();
			if(email == ''){
				$('#e').show();
				$('#email').focus();
				e.preventDefault();
			}
			else if(email.indexOf('.') < 0){
				$('#e').show();
				$('#email').focus();
				e.preventDefault();
			}
			else if(password == ''){
				$('#p').text('비밀번호는 필수 입력 요소입니다.');
				$('#p').show();
				$('#password').focus();
				e.preventDefault();
			}
			else if(password.length < 8){
				$('#p').text('비밀번호는 8자리 이상 12자리 이하여야 합니다.');
				$('#p').show();
				$('#password').focus();
				e.preventDefault();
			}
			else if(name == ''){
				$('#n').show();
				$('#name').focus();
				e.preventDefault();
			}
			else if($('#pck').text() != '일치합니다'){
				alert('비밀번호 확인을 해주시기 바랍니다.');
				$('#passwordck').focus();
				e.preventDefault();
			}
		});
		
	
		function search() {
			location.href = "http://www.naver.com";
		}
	</script>
</body>
</html>
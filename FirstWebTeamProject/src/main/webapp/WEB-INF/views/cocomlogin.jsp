<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="our.team.project.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CoCom 로그인 화면</title>
<%
	MemberVO vo = null;

	if(session.getAttribute("session_login") != null){
		vo = (MemberVO)session.getAttribute("session_login");
	}
	else{
		vo = new MemberVO();
		vo.setEmail("");
	}
%>
</head>
<body>
	<h1>Co Com</h1>
	<br>
	<form method="post" action="login.test">
		<table border="2">
			<tr>
				<td colspan="3">LOGIN</td>
			</tr>
			<tr>
				<td>이메일 :</td>
				<td><input type="text" name="email" value=<%=vo.getEmail()%>></td>
				<td rowspan="2"><input type="submit" name="LoginButton"
					value="LOGIN"></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="button" name="LoginSearch" value="아이디/비밀번호 찾기"></td>
				<td><input type="button" name="SignUp" value="회원가입" id="signupbtn" onclick="signup()"></td>
			</tr>
		</table>
		<span>
			<%
				if(request.getAttribute("message") != null){
			%>
			<% out.println("<b><font color=red>" + request.getAttribute("message") + "</font></b>"); }%>
		</span>
	</form>
	<script src="resources/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		
	
		function signup() {
			location.href = "signup.test";
		}
	</script>

</body>
</html>
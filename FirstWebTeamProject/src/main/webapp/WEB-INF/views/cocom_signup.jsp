<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name=signup>
	<table align=center border=1 bordercolor=white bordercolorlight=gray cellspaciong=0 cellpadding=2>
		<tr bgcolor=#ececec align=center>
			<td colspan=2>회원가입 양식</td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center> 아이디 </td>
			<td>
				<input type=text name=id size=12 maxlength=12>
			</td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center>패스워드</td>
			<td><input type=password name=pw size=12 maxlength=8></td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center>성별</td>
			<td>
				<input type=radio name=sex value=1>남
				<input type=radio name=sex value=2 chedcked>여
			</td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center>나이</td>
			<td>
				<input type=radio name=age value=1>10대
				<input type=radio name=age value=2>20대
				<input type=radio name=age value=3>30대
				<input type=radio name=age value=4>40대
				<input type=radio name=age value=5>50대
				<input type=radio name=age value=6>60대 이상
			</td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center>피부상태</td>
			<td>
				<select name=type>
					<option value="t1">1</option>
					<option value="t2">2</option>
					<option value="t3">3</option>
					<option value="t4">4</option>
					<option value="t5">5</option>
				</select>
			</td>
		</tr>
		<tr>
			<td bgcolor=#ececec align=center>피부질병</td>
			<td>
				<input type="checkbox" name="skin" value="s1">1
				<input type="checkbox" name="skin" value="s2">2
				<input type="checkbox" name="skin" value="s3">3
				<input type="checkbox" name="skin" value="s4">4
				<input type="checkbox" name="skin" value="s5">5<br>
				<input type="checkbox" name="skin" value="s6">6
				<input type="checkbox" name="skin" value="s7">7
				<input type="checkbox" name="skin" value="s8">8
				<input type="checkbox" name="skin" value="s9">9
				<input type="checkbox" name="skin" value="s10">10
			</td>
		</tr>
		<tr align=center>
			<td colspan=2>
			<input type="submit" value="완료">&emsp;
			<input type="button" id="cancel" value="취소">
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>
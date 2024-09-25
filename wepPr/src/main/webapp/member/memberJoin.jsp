<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
 <HEAD>
  <TITLE> memberJoin </TITLE> 
  
  <link href = "../css/style.css" type = "text/css" rel = "stylesheet">
 
 </HEAD>
 <BODY>
 <header><a href = "./memberJoin.jsp">회원가입 페이지></a></header>
 <nav><a href="./memberLogin.jsp" style = "text-decoration : none">로그인하기</a></nav> 
 <section>
	<article>
	<form name="frm" action = "./memberJoinAction.jsp" method="post">
		<table border = "1">
			<tr><th class = "idcolor">아이디</th><td><input type="text" name="memberId" style = "width:100px" maxlength="30" placeholder = "아이디를 입력하세요"></td></tr>
			<tr><th class = "idcolor">비밀번호</th><td><input type="password" name="memberPwd" style = "width:100px" maxlength="30"></td></tr>
			<tr><th>비밀번호 확인</th><td><input type="password" name="memberPwd2" style = "width:100px" maxlength="30"></td></tr>
			<tr><th id="name">이름</th><td><input type="text" name="memberName" style = "width:100px" maxlength="30"></td></tr>
			<tr><th>이메일</th><td><input type="email" name="memberEmail" style = "width:100px" maxlength="30"></td></tr>
			<tr><th>연락처</th><td><input type="number" name="memberPhone" style = "width:100px" maxlength="30"></td></tr>
		<tr><th>주소</th><td>
		
		<select name = "memberAddr" style = "width:100px">
		
			<option value = "서울">서울</option>
			<option value = "대전" selected>대전</option>
			<option value = "부산">부산</option>
			<option value = "인천">인천</option>
			
		</select></td></tr>
		
		<tr><th>성별</th>
		<td>
		<input type="radio" name="memberGender" value = "남성">남성
		<input type="radio" name="memberGender" value = "여성" checked>여성
		</td></tr>
		
		<tr><th>생년월일</th><td><input type="number" name="memberBirth" style = "width:100px" maxlength="8">예)20240920</td></tr>
		
		<tr><th>취미</th><td>
			<input type="checkbox" name="memberHobby" value="야구">야구
			<input type="checkbox" name="memberHobby" value="농구">농구
			<input type="checkbox" name="memberHobby" value="축구">축구	
		</td></tr>
		
		
		<tr>
			<td colspan = 2 style = "text-align:center">
			<input type = "submit" name= "btn" value="회원정보 저장하기">
			<input type = "reset" name= "btn" value="초기화">
		</td>
		</tr>

		</table>
	</form>
	</article>
 </section>

 <aside></aside>
<footer>made by HC</footer> 
 
 </BODY>
</HTML>

<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
 <HEAD>
  <TITLE> memberJoin.html </TITLE>
  <style>
  input[type=text]:focus, input[type=password]:focus{
  	font-size : 120%;
  
  }
  header{
  	text-align : center;
  }
  
  footer{
  	text-align : center;
  }
  
  table{
  	margin: 0 auto;
    border-collapse: collapse;
  }
  
  
  
  
  
  
  
  
  
  </style>
  
  
  
  
  
 </HEAD>

 <BODY>

<header>로그인 페이지</header> 

 <navi></navi>
 <section>
	<article>
	<form name="frm" action = ".test0920_result.html" method="post">
		<table border = "1">
			<tr><td>아이디</td><td><input type="text" name="memberId" style = "width:100px" maxlength="30"></td></tr>
			<tr><td>비밀번호</td><td><input type="password" name="memberPwd" style = "width:100px" maxlength="30"></td></tr>
		
		
		<tr>
			<td colspan = 2 style = "text-align:center">
			<input type = "submit" name= "btn" value="로그인">
		</td>
		</tr>
		<tr></tr>
		<td><a href = "www.naver.com">아이디 찾기</a></td><td>비밀번호 찾기</td>

		</table>
	</form>
	</article>
 </section>

 <aside></aside>
<footer>made by HC</footer> 

  
 </BODY>
</HTML>

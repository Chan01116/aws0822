<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
 <HEAD>
  <TITLE> memberJoin </TITLE> 
  
  <link href = "../css/style.css" type = "text/css" rel = "stylesheet">
 <script type="text/javascript">
 
 // 버튼을 눌렀을때 check 함수 작동
  
 function check(){
	var fm = document.frm; // frm : form객체의 이름
	const email = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
	
	 if (fm.memberId.value == ""){
		 alert("아이디를 입력해주세요");
		 fm.memberId.focus();
		 return;
	 }else if (fm.memberPwd.value == ""){
		 alert("비밀번호를 입력해주세요");
		 fm.memberPwd.focus();
		 return;
	 }else if (fm.memberPwd2.value == ""){
		 alert("비밀번호확인을 입력해주세요");
		 fm.memberPwd2.focus();
		 return;
	 }else if (fm.memberPwd.value !== fm.memberPwd2.value){
		 fm.memberPwd2.value="";
		 fm.memberPwd2.focus();
		 alert("비밀번호가 일치하지 않습니다.");
		 return;
	 }else if (fm.memberName.value == ""){
		 alert("이름을 입력해주세요");
		 fm.memberName.focus();
		 return;
	 }else if (fm.memberEmail.value == ""){
		 alert("이메일을 입력해주세요");
		 fm.memberEmail.focus();
		 return;
	 }else if(email.test(fm.memberEmail.value)==false){
		 alert("이메일형식이 올바르지 않습니다.");
		 fm.memberEmail.value="";
		 fm.memberEmail.focus();
		 return;
	 }else if (fm.memberPhone.value == ""){
		 alert("전화번호를 입력해주세요");
		 fm.memberPhone.focus();
		 return;
	 }else if (fm.memberBirth.value == ""){
		 alert("생년월일을 입력해주세요");
		 fm.memberBirth.focus();
		 return;
	 }else if(hobbyCheck() == false) {
		 alert("취미를 1개이상 선택해주세요");
		 return;
	 }
	 //alert("이동할 정보등록할 차례입니다.");
	 
	 var ans = confirm("저장하시겠습니까?");
	 if(ans == true){
		 fm.action = "<%=request.getContextPath()%>/member/memberJoinAction.jsp";  // html 홈태그 기능을 자바스크립트로 제어
		 fm.method = "post";
		 fm.submit();
	 }
	 return;  // 리턴값을 안쓰면 그냥 멈춤 종료
 }
 
 function hobbyCheck(){
	 
	 var arr = document.frm.memberHobby;  // 문서객체안에 폼객체 안에 input객체 선언
	 var flag = false;           // 체크유무 초기값 false선언
	 
	 for(var i = 0; i<arr.length; i++){    // 선택한 여러값을 반복해서 출력
		 if(arr[i].checked == true){       // 하나라도 선택했다면 true값 리턴
			 flag = true;
			 break;
		 }
		 
	 }
	 return flag;
	 }
	 
	 /* if(flag == false){
	 alert("취미를 1개이상 선택해주세요");
	 return false; }*/
 
	 
	 
 </script>
 </HEAD>
 <BODY>
 <header><a href = "./memberJoin.jsp">회원가입 페이지></a></header>
 <nav><a href="./memberLogin.jsp" style = "text-decoration : none">로그인하기</a></nav> 
 <section>
	<article>
	<form name="frm" >
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
		<input type="radio" name="memberGender" id = "select1"><label for="select1">남성</label>
		<input type="radio" name="memberGender" id = "select2" checked><label for="select2">여성</label>
		</td></tr>
		
		<tr><th>생년월일</th><td><input type="number" name="memberBirth" style = "width:100px" maxlength="8">예)20240920</td></tr>
		
		<tr><th>취미</th><td>
			<input type="checkbox" name="memberHobby" id = "check1"><label for="check1"></label>야구
			<input type="checkbox" name="memberHobby" id = "check2"><label for="check2"></label>농구
			<input type="checkbox" name="memberHobby" id = "check3"><label for="check3"></label>축구	
		</td></tr>
		
		
		<tr>
			<td colspan = 2 style = "text-align:center">
			<button type="button" onclick = "check();">
			저장하기
			</button>
			
			
			<!-- <input type = "submit" name= "btn" value="회원정보 저장하기">
			<input type = "reset" name= "btn" value="초기화"> -->
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

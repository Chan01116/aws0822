<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
    <%-- <%page import="java.sql.Connection" %>
    <%page import="java.sql.DriverManager" %> --%> 
    
    <%
    String memberId = request.getParameter("memberId");
    out.println("memberId값은?"+memberId);
    out.println("<br>");
    
    String memberPwd = request.getParameter("memberPwd");
    out.println("memberPwd값은?"+memberPwd);
    out.println("<br>");
    
    String memberPwd2 = request.getParameter("memberPwd2");
    out.println("memberPwd2값은?"+memberPwd2);
    out.println("<br>");
    
    String memberName = request.getParameter("memberName");
    out.println("memberName값은?"+memberName);
    out.println("<br>");
    
    String memberEmail = request.getParameter("memberEmail");
    out.println("memberEmail값은?"+memberEmail);
    out.println("<br>");
    
    String memberPhone = request.getParameter("memberPhone");
    out.println("memberPhone값은?"+memberPhone);
    out.println("<br>");
    
    String memberAddr = request.getParameter("memberAddr");
    out.println("memberAddr값은?"+memberAddr);
    out.println("<br>");
    
    String memberGender = request.getParameter("memberGender");
    out.println("memberGender값은?"+memberGender);
    out.println("<br>");
    
    String memberBirth = request.getParameter("memberBirth");
    out.println("memberBirth값은?"+memberBirth);
    out.println("<br>");
    
    
    String[] memberHobby = request.getParameterValues("memberHobby");
    String memberInHobby="";
    for(int i = 0; i < memberHobby.length; i++){
    	memberInHobby = memberInHobby + memberHobby[i]+",";
    	
    	out.println("memberHobby값은?"+memberHobby[i]);
    }
    
    
    
    // 1. jsp 프로그래밍 (날코딩 낱코딩방법부터 -> 함수화 -> 객체화 방식) 
    // 2. java/jsp 프로그래밍(model1, model2 MVC방식으로 진화되는 방법)
    // 3. spring 프레임워크로 프로그래밍 하는 방법
    
    
    Connection conn = null;
    String url = "jdbc:mysql://127.0.0.1/aws0822?serverTimezone=UTC";
    String user = "root";
    String password = "1234";
    
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, password);
    
    System.out.println("conn:"+conn);
    
    
    //conn 객체안에는 많은 메소드가 있는데 일단 creatStatement 메소드를 사용해서 쿼리 작성
    
    /* String sql = "insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby) "
    +"values('"+memberId+"','"+memberPwd+"','"+memberName+"','"+memberGender+"','"+memberBirth+"','"+memberAddr+"','"+memberPhone+"','"+memberEmail+"','"+memberInHobby+"')"; */
    /* Statement stmt = conn.createStatement(); */  //쿼리구문을 동작시키는 클래스 Statement
    /* int value = stmt.executeUpdate(sql); */
    
    String sql = "insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby) "
    +"values(?,?,?,?,?,?,?,?,?)";
    
    PreparedStatement pstmt = conn.prepareStatement(sql);
    
     pstmt.setString(1,memberId);
     pstmt.setString(2,memberPwd);
     pstmt.setString(3,memberName);
     pstmt.setString(4,memberGender);
     pstmt.setString(5,memberBirth);
     pstmt.setString(6,memberAddr);
     pstmt.setString(7,memberPhone);
     pstmt.setString(8,memberEmail);
     pstmt.setString(9,memberInHobby);
    
     int value = pstmt.executeUpdate();
    
    
    // value가 0이면 미입력 1이면 입력됨
    %>
    <script>
    
    <%-- alert(<%=value%>); --%>
    
    
    </script>
    
    
    
    
    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
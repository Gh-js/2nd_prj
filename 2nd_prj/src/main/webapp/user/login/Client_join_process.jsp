<%@page import="ra.user.login.ClientDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="회원가입 처리" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
//GET방식의 요청이라면 memberjoin_frm.jsp로 이동
String method=request.getMethod();
if("GET".equals(method)){
	response.sendRedirect("Client_join.html");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.148/common/main/favicon.png">
<!-- bootstrap CDN-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
   
});//ready
</script>

</head>
<body>
<jsp:useBean id="cjVO" class="ra.user.login.Client_joinVO" scope="page"/>
<jsp:setProperty property="*" name="cjVO"/>
<c:catch var="se">

<%
DataEncrypt de=new DataEncrypt("a12345678901234567");

cjVO.setUPW(DataEncrypt.messageDigest("MD5",cjVO.getUPW()));
cjVO.setUNAME(de.encryption(cjVO.getUNAME()));
cjVO.setUTEL(de.encryption(cjVO.getUTEL()));
cjVO.setEmail(de.encryption(cjVO.getEmail1()+"@"+cjVO.getEmail2()));

ClientDAO cDAO =ClientDAO.getInstance();
 cDAO.insertMember(cjVO); 

// 접속자 ip주소를 받아서 VO에 설정
//}catch(SQLException se){
   //se.printStackTrace();
//}
%>
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">회원가입 성공</h5>
    <h6 class="card-subtitle mb-2 text-body-secondary">회원가입해주셔서 감사합니다.</h6>
    <p class="card-text"><c:out value="${ param.UNAME }"/>님께서 입력하신 정보는 아래와 같습니다.</p>
    <p class="card-text">아이디 : <c:out value="${ cjVO.USERID}"/></p>
    <p class="card-text">이메일 : <c:out value="${ cjVO.email }"/></p>
    <a href="E:/dev/workspace/project_2/src/main/webapp/login/main.html" class="card-link">메인으로</a>
    <a href="E:/dev/workspace/project_2/src/main/webapp/login/Client_login.html" class="card-link">로그인</a>
  </div>
</div>
</c:catch>
<c:if test="${not empty se }">
입력하신 아이디는 [<c:out value="${cjVO.USERID}"/>] 이미 사용중입니다. <br/>
다른 id로 재가입 해주세요.
<a href="javascript:history.back();">뒤로</a>
</c:if>
<%-- ${ ClientVO } --%>

</body>
</html>
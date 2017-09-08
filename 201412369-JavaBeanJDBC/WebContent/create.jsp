<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "testBean.studentDAO" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<jsp:useBean id="item" scope="page" class="testBean.studentVO">
 <jsp:setProperty name="item" property="*"/>
</jsp:useBean>
</html>

<%
 request.setCharacterEncoding("UTF-8");
 studentDAO insert = new studentDAO();
 insert.insert(item);
%>
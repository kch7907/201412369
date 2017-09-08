<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
 <jsp:useBean id="item" class="testBean.studentVO" scope="request"></jsp:useBean>
 <jsp:setProperty property="number" name="item"/>
 <jsp:setProperty property="name" name="item"/>
 <!-- <jsp:setProperty property="*" name="item"/> -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
 <jsp:getProperty name="item" property="number"/>
 <jsp:getProperty name="item" property="name"/>
</body>
</html>
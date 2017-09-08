
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "testBean.studentVO" %>
<%@ page import = "testBean.studentDAO" %>
<%@ page import = "java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
studentDAO select = new studentDAO();
List<studentVO> rsList = new ArrayList<studentVO>();
rsList = select.select();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(int i = 0; i <rsList.size(); i++){
	studentVO student = (studentVO)rsList.get(i);
%>
<%=student.getNumber() %>
<%=student.getName() %> <BR>
<%}%>

</body>
</html>
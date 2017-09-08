<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String number = request.getParameter("number");
String name = request.getParameter("name");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412369","201412369","201412369");

PreparedStatement sql = conn.prepareStatement("insert into student values(?,?)");
sql.setString(1,number);
sql.setString(2,name);
sql.executeUpdate();
response.sendRedirect("read.jsp");
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	System.out.println("edit.jsp È£ÃâµÊ");
 	String name = request.getParameter("name");
 	String email = request.getParameter("email");
 	out.println("name : " + name);
 	out.println("email : " + email);
 %>
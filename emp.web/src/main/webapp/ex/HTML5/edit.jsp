<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	System.out.println("edit.jsp 호출됨");
 	String name = request.getParameter("name");
 	String email = request.getParameter("email");
 	out.println("name : " + name);
 	out.println("email : " + email);
 %>
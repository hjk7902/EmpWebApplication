<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ������</title>
</head>
<body>
<h1>�ֹ��� ��ǰ ���</h1>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=euc-kr");
Enumeration<String> paramNames = request.getParameterNames();

while(paramNames.hasMoreElements()) {
	String paramName = paramNames.nextElement();
	String paramValue = request.getParameter(paramName);
	out.println(paramName + " : " + paramValue + "<br>");
}
%>
</body>
</html>
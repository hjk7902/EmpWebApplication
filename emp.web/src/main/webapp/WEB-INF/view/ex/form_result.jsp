<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>��û ������</title>
</head>
<body>
<h1>��� �����Դϴ�.</h1>
<%
	request.setCharacterEncoding("euc-kr");
	response.setContentType("text/html;charset=euc-kr");

	Enumeration<String> headerNames = request.getHeaderNames();
	while(headerNames.hasMoreElements()) {
		String headerName = headerNames.nextElement();
		Enumeration<String> headers = request.getHeaders(headerName);
		out.print(headerName + ":" );
		while(headers.hasMoreElements()) {
			String headerValue = headers.nextElement();
			out.print(" " + headerValue);
		}
		out.println("<br>");
	}	
%>
<h1>�Ķ���� �����Դϴ�.</h1>
<%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()) {
		String paramName = paramNames.nextElement();
		String[] params = request.getParameterValues(paramName);
		out.print(paramName + ":");
		for(String paramValue : params) {
			out.print(" " + paramValue);
		}
		out.println("<br>");
	}
//http://localhost:8080/result.jsp?name=kildong&age=30&hobby=ski&hobby=golf
%>

</body>
</html>
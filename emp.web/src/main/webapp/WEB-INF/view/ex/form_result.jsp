<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>요청 데이터</title>
</head>
<body>
<h1>헤더 정보입니다.</h1>
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
<h1>파라미터 정보입니다.</h1>
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
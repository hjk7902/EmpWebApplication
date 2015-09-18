<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Form Result</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");//utf-8
response.setContentType("text/html;charset=UTF-8");

String ip = request.getRemoteAddr();
out.println("당신의 주소는 : " + ip + "<br>");
out.println("========== 헤더 목록 =================<br>");
Enumeration<String> headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements()) {
	String headerName = headerNames.nextElement();
	String headerValue = request.getHeader(headerName);
	out.println(headerName + " : " + headerValue + "<br>");
}	
out.println("========== 파라미터 목록 =================<br>");
Enumeration<String> paramNames = request.getParameterNames();

while(paramNames.hasMoreElements()) {
	String paramName = paramNames.nextElement();
	String paramValue = request.getParameter(paramName);
	out.println(paramName + " : " + paramValue + "<br>");
}
%>
</body>
</html>
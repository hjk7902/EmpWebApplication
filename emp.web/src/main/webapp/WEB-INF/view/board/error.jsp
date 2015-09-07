<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" isErrorPage="true"%>
<%
response.setStatus(200);
%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6">
                <h2>Board</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Board</li>
                    <li class="active">Error</li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
	<h3>${message}</h3>
	<%
	if(exception != null)
	out.println(exception.getMessage());
	%>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
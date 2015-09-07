<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
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
                <h2><a href="<c:url value='/'/>">Board</a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Board</li>
                    <li class="active">Delete</li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
		<h3>글 비밀번호를 입력하세요</h3>
		<form action='<c:url value="/board"/>' class="form-inline" method="post">
		<input type="hidden" name="delete" value="${bbsno}">
		<input type="hidden" name="replynumber" value="${replynumber}">
		<input type="hidden" name="page" value="${page}">
		<input type="password" class="" name="password">
		<input type="submit" class="btn btn-danger" value=" 삭 제 ">
		</form>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>

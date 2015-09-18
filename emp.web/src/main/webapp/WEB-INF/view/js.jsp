<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6">
                <h2><fmt:message key="JS"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EX"/></li>
                    <li class="active"><fmt:message key="JS"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	<div class="row">
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>JavaScript</h3>
			<ul>
				<li><a href="<c:url value='/ex/'/>" target=_blank></a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>AJAX</h3>
			<ul>
				<li><a href="<c:url value='/ex/'/>" target=_blank></a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>jQuery</h3>
			<ul>
				<li><a href="<c:url value='/ex/'/>" target=_blank></a>
			</ul>
			</div>
		</div>
		</div>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
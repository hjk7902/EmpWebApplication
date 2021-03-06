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
            <div class="col-md-6 pc">
                <h2><fmt:message key="CSS3"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EX"/></li>
                    <li class="active"><fmt:message key="CSS3"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
		<div class="row">
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>CSS</h3>
			<ul>
				<li><a href="<c:url value='/ex/CSS/Lab/start/EmpList.html'/>" target=_blank>CSS 사용 전</a>
				<li><a href="<c:url value='/ex/CSS/Lab/end/EmpList.html'/>" target=_blank>CSS 사용 후</a>
				<li><a href="<c:url value='/ex/CSS/Lab/end_mobile/EmpList.html'/>" target=_blank>PC/Mobile Layout</a>
				<li><a href="<c:url value='/ex/CSS/Border/border-image.html'/>" target=_blank>Border Image</a>
				<li><a href="<c:url value='/ex/CSS/Border/box-shadow.html'/>" target=_blank>Box Shadow</a>
				<li><a href="<c:url value='/ex/CSS/Animation/animation.html'/>" target=_blank>Animation</a>
				<li><a href="<c:url value='/ex/CSS/Transform/cube.html'/>" target=_blank>Transform</a>
				<li><a href="<c:url value='/ex/CSS/WebFont/index.html'/>" target=_blank>WebFont</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>CSS Selector</h3>
			<ul>
				<li><a href="<c:url value='/ex/CSS/cssorder.html'/>" target=_blank>스타일 우선순위</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Responsive Web</h3>
			<ul>
				<li><a href="<c:url value='/ex/CSS/MediaQuery/media_layout.html'/>" target=_blank>브라우저 크기에 따른 단 수 조정 예</a>
				<li><a href="<c:url value='/ex/CSS/MediaQuery/media_print.html'/>" target=_blank>Media Print</a>
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
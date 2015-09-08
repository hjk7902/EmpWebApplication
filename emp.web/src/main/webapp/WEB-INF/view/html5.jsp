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
                <h2><fmt:message key="HTML5"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EX"/></li>
                    <li class="active"><fmt:message key="HTML5"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	HTML5<p>
	<ul>
		<li><a href="<c:url value='/ex/DragDrop/draganddrop.html'/>">Drag and Drop</a>
		<li><a href="<c:url value='/ex/DragDrop/dragndrop_icon.html'/>">Drag and Drop</a>
		<li><a href="<c:url value='/ex/DragDrop/image_preview.html'/>">Drag and Drop으로 이미지 미리보기</a>
		<li><a href="<c:url value='/ex/DragDrop/dragout.html'/>">Drag and Drop</a>
		<li><a href="<c:url value='/ex/DragDrop/filedrag.html'/>">Drag and Drop으로 텍스트파일 미리보기</a>
		<li><a href="<c:url value='/ex/DragDrop/filedrag_native.html'/>">Drag and Drop으로 텍스트파일 미리보기(JS 이용)</a>
		<li><a href="<c:url value='/ex/DragDrop/filedrag_jquery.html'/>">Drag and Drop으로 텍스트파일 미리보기(jQuery 이용)</a>
		<li><a href="<c:url value='/ex/DragDrop/cart/index.html'/>" target=_blank>드래그 앤 드롭을 이용해 쇼핑몰에서 상품을 장바구니에 담는 예제</a>
	</ul>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
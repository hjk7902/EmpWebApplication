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
	<div class="row">
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>HTML 4.01</h3>
			<ul>
				<li><a href="<c:url value='/ex/HTML/Lab/start/EmpForm.html'/>" target=_blank>Lab - start</a>
				<li><a href="<c:url value='/ex/HTML/Lab/end/EmpForm.html'/>" target=_blank>Lab - end</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>HTML5</h3>
			<ul>
				<li><a href="<c:url value='/ex/HTML5/structured_elements.html'/>" target=_blank>HTML5 구조적 엘리먼트</a>
				<li><a href="<c:url value='/ex/HTML5/new_elements.html'/>" target=_blank>HTML5 신규 엘리먼트</a>
				<li><a href="<c:url value='/ex/HTML5/form/input_properties.html'/>" target=_blank>HTML5 입력 양식</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/contenteditable.html'/>" target=_blank>HTML5 클로벌 속성 - contentEditable</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/popup_badcase.html'/>" target=_blank>알림 창 띄우기(badcase)</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/custom-data.html'/>" target=_blank>커스텀 데이터 속성을 이용한 알림 창 띄우기</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/custom-data_jquery.html'/>" target=_blank>커스텀 데이터 속성을 이용한 알림 창 띄우기(jQuery)</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Drag &amp; Drop</h3>
			<ul>
				<li><a href="<c:url value='/ex/DragDrop/dragndrop_icon.html'/>" target=_blank>이미지 이동시키기</a>
				<li><a href="<c:url value='/ex/DragDrop/image_preview.html'/>" target=_blank> 이미지 미리보기</a>
				<!-- li><a href="<c:url value='/ex/DragDrop/dragout.html'/>" target=_blank>Drag out으로 파일 다운로드하기</a-->
				<li><a href="<c:url value='/ex/DragDrop/filedrag.html'/>" target=_blank>텍스트파일 미리보기</a>
				<li><a href="<c:url value='/ex/DragDrop/filedrag_native.html'/>" target=_blank>텍스트파일 미리보기(JS 이용)</a>
				<li><a href="<c:url value='/ex/DragDrop/filedrag_jquery.html'/>" target=_blank>텍스트파일 미리보기(jQuery 이용)</a>
				<li><a href="<c:url value='/ex/DragDrop/cart/index.html'/>" target=_blank>드래그 앤 드롭을 이용해 쇼핑몰에서 상품을 장바구니에 담는 예제</a>
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
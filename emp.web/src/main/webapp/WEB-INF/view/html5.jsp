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
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
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
				<li><a href="<c:url value='/ex/HTML5/global_attr/contenteditable.html'/>" target=_blank>contentEditable 속성</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/popup_badcase.html'/>" target=_blank>알림 창 띄우기(badcase)</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/custom-data.html'/>" target=_blank>커스텀 데이터 속성을 이용한 알림 창 띄우기</a>
				<li><a href="<c:url value='/ex/HTML5/global_attr/custom-data_jquery.html'/>" target=_blank>jQuery를 이용한 알림 창 띄우기</a>
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

		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Audio/Video, Canvas</h3>
			<ul>
				<li><a href="<c:url value='/ex/'/>" target=_blank></a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>

		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Communication API</h3>
			<ul>
				<li class="pc"><a href="<c:url value='/ex/Communication/cross-document/client.html'/>" target=_blank>IFrame을 이용한 챠트 서비스 사용 예 - client.html 문서에 iframe을 이용해 챠트를 나타낼 수 있는 페이지를 삽입했다. 데이터 입력은 client.html에서 받고 결과를 iframe내의 문서를 이용해 보여준다.</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='/ex/Communication/one2many/publisher.html'/>" target=_blank>포트 공개를 이용한 1:다 메시지 전송 예 - 하나의 문서에서 여러 페이지로 메시지를 보내는 예제이다.</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Worker</h3>
			<ul>
				<li class="pc"><a href="<c:url value='/ex/Worker/worker/Lab/end/workertest.html'/>" target=_blank>전용 워커 예 - 입력필드에 입력한 수까지 1씩 증가하면서 값을 모두 더한 다음 결과는 연산 2초 후 UI쓰레드에게 보내진다.)</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='/ex/Worker/sharedworker/Lab/start.html'/>" target=_blank>공유 워커 예 - start.html 문서에서 입력 필드에 값을 입력한 다음 작업시작 버튼을 클릭하면 공유워커에 작업을 실행시킨다. 새로 보여지는 end.html에서 결과를 화면에 나타낸다.</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>SSE</h3>
			<ul>
				<li class="pc"><a href="<c:url value='/ex/SSE/stockdisplay.html'/>" target=_blank>Server Sent Event 예제 - setInterval 함수를 사용하지 않고 서버의 데이터를 새로 받아온다.</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>WebSocket</h3>
			<ul>
				<li class="pc"><a href="<c:url value='/ex/WebSocket/chat.html'/>" target=_blank>웹소켓을 이용한 채팅 프로그램.</a>
				<li class="pc"><a href="<c:url value='/ex/WebSocket/echo.html'/>" target=_blank>웹소켓을 이용한 에코 예제.</a>
				<li class="pc"><a href="<c:url value='/ex/WebSocket/snake.html'/>" target=_blank>웹소켓을 이용한 snake 게임.</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Offline &amp; Storage</h3>
			<ul>
				<li><a href="<c:url value='/ex/Offline/cart/index.html'/>" target=_blank>드래그로 장바구니 담기(오프라인)</a>
				<li><a href="<c:url value='/ex/Offline/Lab/end/news_rss.html'/>" target=_blank>뉴스보기(오프라인)</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
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
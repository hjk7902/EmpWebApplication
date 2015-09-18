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
	<div class="pc alert alert-danger">
	<ol>
		<li><a href="http://javaspecialist.co.kr/download/html5_src_v25.zip" class="alert-link" >소스코드 다운로드</a>
	</ol>
	</div>
	<div class="row">
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>HTML 4.01</h3>
			<ul>
				<li><a href="<c:url value='/ex/HTML/Lab/end/EmpForm.html'/>" target=_blank>HTML 4.01  폼태그</a>
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
				<li><a href="<c:url value='/ex/Video/Lab/end/video.html'/>" target=_blank>Video 플레이어 예제</a>
				<li><a href="<c:url value='/ex/Video/Lab/advanced/video.html'/>" target=_blank>썸네일 뷰를 포함하는 Video 플레이어 예제</a>
				<li><a href="<c:url value='/ex/Video/track/track.html'/>" target=_blank>자막기능을 사용하는 Video 플레이어</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li><a href="<c:url value='/ex/Canvas/Lab/clock/end/clock.html'/>" target=_blank>시계 - 간단한 아날로그 시계</a>
				<li><a href="<c:url value='/ex/Canvas/clock2/clock.html'/>" target=_blank>아날로그 시계(setTimeout vs. requestAnimatinFrame)</a>
				<li><a href="<c:url value='/ex/Canvas/drawing/end/simplepaint2.html'/>" target=_blank>초 간단 웹 그림판</a>
				<li><a href="<c:url value='https://sketch.io/sketchpad/'/>" target=_blank>잘 된 그림판 예제 사이트(sketchpad)</a>
			</ul>
			</div>
		</div>
		</div>

		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Communication API</h3>
			<ul>
				<li><a href="<c:url value='/ex/Communication/cross-document/client.html'/>" target=_blank>IFrame을 이용한 챠트 서비스 사용 예 - client.html 문서에 iframe을 이용해 챠트를 나타낼 수 있는 페이지를 삽입했다. 데이터 입력은 client.html에서 받고 결과를 iframe내의 문서를 이용해 보여준다.</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li><a href="<c:url value='/ex/Communication/one2many/publisher.html'/>" target=_blank>포트 공개를 이용한 1:다 메시지 전송 예 - 하나의 문서에서 여러 페이지로 메시지를 보내는 예제이다.</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Worker</h3>
			<ul>
				<li><a href="<c:url value='/ex/Worker/worker/Lab/end/workertest.html'/>" target=_blank>전용 워커 예 - 입력필드에 입력한 수까지 1씩 증가하면서 값을 모두 더한 다음 결과는 연산 2초 후 UI쓰레드에게 보내진다.)</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li><a href="<c:url value='/ex/Worker/sharedworker/Lab/start.html'/>" target=_blank>공유 워커 예 - start.html 문서에서 입력 필드에 값을 입력한 다음 작업시작 버튼을 클릭하면 공유워커에 작업을 실행시킨다. 새로 보여지는 end.html에서 워커의 실행 결과를 화면에 나타낸다.</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>SSE</h3>
			<ul>
				<li><a href="<c:url value='/ex/SSE/stockdisplay.html'/>" target=_blank>Server Sent Event 예제 - setInterval 함수를 사용하지 않고 서버의 데이터를 새로 받아온다.</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>WebSocket</h3>
			<ul>
				<li><a href="<c:url value='/ex/WebSocket/chat.html'/>" target=_blank>웹소켓을 이용한 채팅 프로그램.</a>
				<li><a href="<c:url value='/ex/WebSocket/echo.html'/>" target=_blank>웹소켓을 이용한 에코 예제.</a>
				<li><a href="<c:url value='/ex/WebSocket/snake.html'/>" target=_blank>웹소켓을 이용한 snake 게임.</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Offline Application</h3>
			<ul>
				<li><a href="<c:url value='/ex/Offline/cart/index.html'/>" target=_blank>드래그로 장바구니 담기(오프라인)</a>
				<li><a href="<c:url value='/ex/Offline/Lab/end/news_rss.html'/>" target=_blank>뉴스보기(IndexedDB+오프라인)</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Database</h3>
			<ul>
				<li><a href="<c:url value='/ex/Database/IndexedDB/Lab/end/news_rss.html'/>" target=_blank>뉴스보기(IndexedDB)</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
				<li class="pc"><a href="<c:url value='/ex/Database/sqldatabase/bookmark.html'/>" target=_blank>SQLDatabase 예제</a>
				<li class="pc"><a href="<c:url value='#'/>" target=_blank>&nbsp;</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Local/Session Storage</h3>
			<ul>
				<li><a href="<c:url value='/ex/Storage/notepad.html'/>" target=_blank>Local Storage를 이용한 메모장</a>
				<li><a href="<c:url value='/ex/Storage/storage_event.html'/>" target=_blank>Storage 이벤트 테스트</a>
				<li><a href="<c:url value='/ex/Storage/storage_json.html'/>" target=_blank>JSON 객체 저장하기</a>
				<li class="pc"><a href="<c:url value='/ex/Storage/setting.html'/>" target=_blank>Local Storage를 이용한 나만이 페이지 설정</a>
			</ul>
			</div>
		</div>
		</div>
		<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
			<h3>Geolocation API</h3>
			<ul>
				<li><a href="<c:url value='/ex/Geolocation/Lab/end/myposition.html'/>" target=_blank>내 위치 표시하기(휴대폰 설정에서 브라우저가 위치정보(GPS)를 사용할 수 있는 상태이면 현재 위치를 지도에 표시헤 줍니다.)</a>
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
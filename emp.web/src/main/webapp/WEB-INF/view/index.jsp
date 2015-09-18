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
                <h2><fmt:message key="HOME"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="DASHBOARD"/></li>
                    <li class="active"><fmt:message key="HOME"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	<div class="alert alert-info" role="alert">
	<ol>
		<li>이 사이트는 벡엔드 기술 Java, Servlet/JSP, JDBC, MVC Pattern 등과 프론트엔드 기술 HTML5, CSS3, JavaScript 등을 학습하기 위해 만들어졌습니다.
		<li>이 사이트는 인터넷 익스플로러 8과 그 이하버전을 지원하지 않습니다.
		<li>이 사이트에 사용된 기술은 다음과 같습니다.
	</ol>
	</div>
	<div class="pc alert alert-danger">
	<ol>
		<li><a href="http://cafe.naver.com/javaspecialistgroup.cafe" class="alert-link" target="_blank">네이버 자바전문가그룹 카페로 이동하시려면 여기를 클릭하세요.</a>
	</ol>
	</div>
	<ol>
		<li>Maven Web Project
		<li>Servlet : ...web 페키지 내의 Servlet 파일, 파라미터 이름으로 액션이 처리되도록 했음
		<li>JSP : 거의 없음
		<li>EL : 데이터를 출력할 곳에 사용했음
		<li>JSTL : JSP문서 내에서 사용했음. core, fmt(국제화)
		<li>fmt 국제화 : resources/i18n/xxx_en.properties 
		<li>Tag Library : 게시판 페이징처리에 사용했음
		<li>HTML5
		<li>CSS3
		<li>CSS3를 이용한 반응형 웹 페이지 : link 태그 이용
		<li>HTML5 API
		<li>Dandelion Datatables framework : EMP 테이블 데이터 목록 출력하는 곳에서 사용 view/emp/list.jsp 파일
		<li>Datatables 국제화 : resources/dandelion/datatables/datatables_ko.properties
		<li>HSQLDB 사용 
		<li>컨텍스트 로드시 HSQLDB를 초기화 하기 위한 Scriptella 라이브러리 사용, WEB-INF/lib/scriptella.jar, ...common.db.lisstener.WebDBInitializer.java, resources/db/* 파일들
		<li>Tomcat 커넥션풀 사용 : webapp/META-INF/context.xml, resources/db/database.properties, ...common.db.DBConn.java
	</ol> 
	</div>
	<p>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
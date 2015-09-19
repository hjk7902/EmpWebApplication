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
	<div class="alert alert-info">
	<ol>
		<li>이 사이트는 벡엔드 기술 Java, Servlet/JSP, JDBC, MVC Pattern 등과 프론트엔드 기술 HTML5, CSS3, JavaScript 등을 학습하기 위해 만들어졌습니다.
		<li>이 사이트는 인터넷 익스플로러 8과 그 이하버전을 지원하지 않습니다.
		<li>이 사이트에 사용된 기술은 다음과 같습니다.
	</ol>
	</div>
	<div class="alert">
	<ol>
		<li>Project Type : Maven Project -> maven-archtype-webapp
		<li>Servlet : 각 모듈별 web 페키지 내의 Servlet 파일들, 파라미터 이름으로 액션이 처리되도록 했음
		<li>JSP : JSP파일은 결과를 출력하거나 폼 양식을 제공하는 용도로 사용함. JSP파일 내에 JSP코드는 존재하지 않음
		<li>HTML : HTML5 예제코드를 위해 사용하였으며, 한들 인코딩 처리를 위해 web.xml 파일에 mime-mapping 설정을 추가함
		<li>EL : 데이터를 출력할 곳에 사용했음
		<li>JSTL : JSP문서 내에서 사용했음. core, fmt(국제화)
		<li>국제화 : fmt JSTL 를 이용해 국체화 처리 함, ko와 en 두 가지 설정함. resources/i18n/xxx_en.properties 
		<li>Custom Tag Library : 게시판 페이징처리에 사용했음
		<li>HTML5 : Semantic Element
		<li>CSS3
		<li>CSS3를 이용한 반응형 웹 페이지 : link 태그 이용
		<li>HTML5 API
		<li>Dandelion Datatables framework : EMP 테이블 데이터 목록 출력하는 곳에서 사용 view/emp/list.jsp 파일
		<li>Datatables 국제화 : resources/dandelion/datatables/datatables_ko.properties
		<li>Database : HSQLDB 사용 
		<li>컨텍스트 로드시 HSQLDB를 초기화 하기 위한 Scriptella 라이브러리 사용, WEB-INF/lib/scriptella.jar, ...common.db.lisstener.WebDBInitializer.java, resources/db/* 파일들
		<li>커넥션풀 : Tomcat 커넥션 사용, webapp/META-INF/context.xml, resources/db/database.properties, ...common.db.DBConn.java
	</ol> 
	</div>

	<div class="pc alert alert-danger">
	<ol>
		<li><a href="http://cafe.naver.com/javaspecialistgroup.cafe" class="alert-link" target="_blank">네이버 자바전문가그룹 카페로 이동하시려면 여기를 클릭하세요.</a>
	</ol>
	</div>
	</div>
	<p>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
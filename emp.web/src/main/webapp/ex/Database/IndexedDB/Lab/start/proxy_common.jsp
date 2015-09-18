<%-- samples/rss/news_rss.html --%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% %>
<c:import charEncoding="UTF-8" url="${param.rssurl}"></c:import> 
<!-- 위에서 가장중요한 부분은 param.rssurl 인데 이것으로 jquery mobile 과 교신할때 쓰이는 주소 파라미터 값으로 작동된다.-->
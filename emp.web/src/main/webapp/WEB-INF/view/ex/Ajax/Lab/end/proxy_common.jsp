<%-- samples/rss/news_rss.html --%>
<%@ page language="java" contentType="text/xml; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% %>
<c:import charEncoding="UTF-8" url="${param.rssurl}"></c:import> 
<!-- ������ �����߿��� �κ��� param.rssurl �ε� �̰����� jquery mobile �� �����Ҷ� ���̴� �ּ� �Ķ���� ������ �۵��ȴ�.-->
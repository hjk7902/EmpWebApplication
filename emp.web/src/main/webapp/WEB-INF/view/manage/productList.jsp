<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="content">
    <h2>검색 결과</h2>
	<datatables:table id="products" data="${productList}" row="product"
		theme="bootstrap3" cssClass="table table-striped" pageable="true"
		info="false" export="xls">
		<datatables:column title="제품번호" cssStyle="width: 60px;"
			display="html" property="productId"/>
		<datatables:column title="바코드" property="barcode"/>
		<datatables:column title="제품명" property="productName" cssStyle="width: 60px;"/>
		<datatables:column title="제조회사"  property="company" cssStyle="width: 60px;" />
		<datatables:column title="가격"  property="price" cssStyle="width: 50px;"/>
		<datatables:column title="키워드"  property="keyword" />
		<datatables:column title="이미지" cssStyle="width: 60px;" display="html">
	    	<img src='<c:url value="${product.productImage}"/>' width="50px" height="50px"/>
	 	</datatables:column>
	 	<datatables:column title="제품상세"  property="details" />
		<datatables:export type="xls" cssClass="btn btn-default" cssStyle="height: 25px;" />
	</datatables:table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
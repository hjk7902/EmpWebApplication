<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/emp" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><a href="<c:url value='/emp'/>"><fmt:message key="DELETE_EMPLOYEE_DATA"/></a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Emp</li>
                    <li class="active">Delete employee data</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="content">
<p>
	<form action="<c:url value='/emp?delete'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <div class="col-sm-4">
        <input type="hidden" name="empno" id="empno" value="${empno}" class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ename"><fmt:message key="ENAME"/></label>
      <div class="col-sm-4">
        <input type="text" name="ename" id="ename" maxlength="10" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="DELETE"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
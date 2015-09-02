<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/header" />
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
                <h2><a href="<c:url value='/emp'/>">Emp</a></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Emp</li>
                    <li class="active">New Employment</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="content">
<p>
	<form action="<c:url value='/emp?insert'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="empno"><fmt:message key="EMPNO"/></label>
      <div class="col-sm-4">
        <input type="number" name="empno" id="empno" value="${emp.empno}" class="form-control" placeholder="<fmt:message key="EMPNO"/>">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ename"><fmt:message key="ENAME"/></label>
      <div class="col-sm-4">
        <input type="text" name="ename" id="ename"class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="job"><fmt:message key="JOB"/></label>
      <div class="col-sm-8">
        <input type="text" name="job" id="job"class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="mgr"><fmt:message key="MANAGER"/></label>
      <div class="col-sm-2">
        <select name="mgr" id="mgr" class="form-control">
        	<c:forEach var="mgr" items="${mgrList}">
        	<option value="${mgr.empno}">${mgr.ename}</option>
        	</c:forEach>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="hiredate"><fmt:message key="HIREDATE"/></label>
      <div class="col-sm-8">
        <input type="text" name="hiredate" id="hiredate"class="form-control" placeholder="2015-01-01">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="sal"><fmt:message key="SAL"/></label>
      <div class="col-sm-8">
        <input type="text" name="sal" id="sal" class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="comm"><fmt:message key="COMM"/></label>
      <div class="col-sm-8">
        <input type="text" name="comm" id="comm" class="form-control">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="deptno"><fmt:message key="DEPTNO"/></label>
      <div class="col-sm-6">
        <select name="deptno" id="deptno" class="form-control">
        	<c:forEach var="dept" items="${deptList}">
        	<option value="${dept.deptno}">${dept.dname}(${dept.loc})</option>
        	</c:forEach>
        </select>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="SAVE"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
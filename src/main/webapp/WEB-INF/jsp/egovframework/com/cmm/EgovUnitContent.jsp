<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>eGovFrame <spring:message code="comCmm.unitContent.1"/></title>
</head>
<body>
	<c:if test="${loginVO != null}">
		${loginVO.name }<spring:message code="comCmm.unitContent.2"/> <a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do"><spring:message code="comCmm.unitContent.3"/></a>
	</c:if>
	<c:if test="${loginVO == null }">
		<jsp:forward page="/uat/uia/egovLoginUsr.do"/>
	</c:if>
	
	<p>${loginVO.name }환영합니다!</p>
</body>
</html>
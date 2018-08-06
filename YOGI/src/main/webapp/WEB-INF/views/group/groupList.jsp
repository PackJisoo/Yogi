<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�׷� ����Ʈ</title>
</head>
<body>
<c:choose>
	<c:when test="${fn:length(list) > 0 }">
		<c:forEach items="${list }" var="row">
			${row.GG_NO}
			${row.GG_NAME}
			${row.GG_PLACE}
		</c:forEach>
	</c:when>
</c:choose>
<form name="search_form" action="<c:url value="/group/groupSearch"/>" method="post">
<input type="checkbox" name="searchCategory" value="${searchCategory}">����
<input type="submit" value="�˻�">
</form>
</body>
</html>
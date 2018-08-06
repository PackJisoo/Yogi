<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
그룹 리스트
<c:choose>
<c:when test="${fn:length(list) > 0 }">
<table border="1">
		<tr background="gray">
			<td>no.</td>
			<td>그룹명</td>
			<td>주최자</td>
			<td>카테고리</td>
			<td>장소</td>
			<td>비용(원)</td>
			<td>총 인원(명)</td>
			<td>penalty</td>
			<td>날짜</td>
		</tr>
		<c:forEach items="${list}" var="row">
		<tr>
			<td>${row.GG_NO}</td>
			<td>${row.GG_NAME}</td>
			<td>${row.M_NAME}</td>
			<td>${row.GG_CATEGORY}</td>
			<td>${row.GG_PLACE}</td>
			<td>${row.GG_COST}</td>
			<td>${row.GG_TOTAL}</td>
			<td>${row.GG_PENALTY}</td>
			<td>${row.GG_DATE}</td>
		</tr>
		</c:forEach>
</table>
</c:when>
<c:otherwise>
		<br>
		생성된 그룹이 없습니다.
</c:otherwise>
</c:choose>
</body>
</html>
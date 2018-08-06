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
멤버 리스트
<c:choose>
<c:when test="${fn:length(list) > 0 }">
<table border="1">
		<tr background="gray">
			<td>no.</td>
			<td>ID</td>
			<td>phone</td>
			<td>점수</td>
			<td>등급</td>
			<td>penalty</td>
			<td>가입날짜</td>
		</tr>
		<c:forEach items="${list}" var="row">
		<tr>
			<td>${row.M_NO}</td>
			<td>${row.M_ID}</td>
			<td>${row.M_PHONE}</td>
			<td>${row.M_GRADE}</td>
			<td>${row.M_LV}</td>
			<td>${row.M_PENALTY}</td>
			<td>${row.M_DATE}</td>
		</tr>
		</c:forEach>
</table>
</c:when>
<c:otherwise>
		<br>
		가입한 멤버가 없습니다.
</c:otherwise>
</c:choose>
</body>
</html>
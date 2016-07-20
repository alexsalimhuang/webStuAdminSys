<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${sessionScope.stus }" var="stu">
	<tr>
		<td>${stu.stuNo }</td>
		<td>${stu.stuName }</td>
		<td>${stu.stuSex }</td>
		<td>${stu.stuDate }</td>
		<td>${stu.stuEmail }</td>
		<td>${stu.stuPhone }</td>
		<td>${stu.stuAddress }</td>
	</tr>
</c:forEach>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--컨텍스트 주소 얻기 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#div {
width: 500px;
}
</style>
</head>
<body>
<!-- header -->
<jsp:include page="../include/header.jsp"/>
<!-- header -->

<!--
<div >
	<div>
		<label>${eventBean.event_title } </label><br>
		<label>${eventBean.event_startdate} ~ ${eventBean.event_enddate}</label>	
	</div>
	<div>
		<img src="../upload/${eventBean.event_image}" id="div"><br>
		<label>${eventBean.event_content } </label>
	</div>
	<div>
		<input type="button" value="삭제하기" onclick="location.href='${contextPath}/event/eventDelete.do?event_num=${eventBean.event_num}'">
		<input type="button" value="수정하기" onclick="location.href='${contextPath}/event/eventUpdateForm.do?event_num=${eventBean.event_num}'">
		<input type="button" value="목록보기" onclick="location.href='${contextPath}/event/events.do'">
	</div>
</div>
-->

<table style="table-layout: fixed;">
	<tr >
		<td width="800px;" >
			<label>${eventBean.event_title } </label><br>
			<label>${eventBean.event_startdate} ~ ${eventBean.event_enddate}</label>
		</td>
	</tr>
	<tr>
		<td>
			<img src="../upload/${eventBean.event_image}" id="div"><br>
			<label>${eventBean.event_content } </label>
		</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="삭제하기" onclick="location.href='${contextPath}/event/eventDelete.do?event_num=${eventBean.event_num}'">
			<input type="button" value="수정하기" onclick="location.href='${contextPath}/event/eventUpdateForm.do?event_num=${eventBean.event_num}'">
			<input type="button" value="목록보기" onclick="location.href='${contextPath}/event/events.do'">
		</td>
	</tr>
	

</table>




<!-- footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- footer -->	
</body>
</html>
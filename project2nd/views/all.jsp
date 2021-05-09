<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$('.del').click(function() {
		alert('삭제하시겠습니까?')
		$(this)
	})
})
</script>

</head>
<body>
<!-- sql문으로 가져온 10개의 데이터를 for문을 돌려서 출력 -->

<table>
	<tr>
		<th>유형</th>
		<th>제목</th>
		<th>날짜</th>
		<th>답변</th>
		<th>수정/삭제</th>
	</tr>
	<c:forEach var="vo" items="${list}">
	<tr>		
		<td>${vo.qtype}</td>
		<td>${vo.qtitle}</td>
		<td>${vo.qdate}</td>
		<td>${vo.reply}</td>
		<td>
		<a href="reply.jsp?qid=${vo.qid}&qtype=${vo.qtype}&qtitle=${vo.qtitle}&qcontents=${vo.qcontents}&qdate=${vo.qdate}">답변</a>
		<a href="qnaupdate.jsp?qid=${vo.qid}&qtype=${vo.qtype}&qtitle=${vo.qtitle}&qdate=${vo.qdate}">수정</a>
		<a class="del" href="delete?qid=${vo.qid}">삭제</a>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td>
	</tr>
</table>
<br>
<%-- <c:forEach var="vo" items="${list}">
    <span>유형 : ${vo.qtype}</span>
    <span>제목 : ${vo.qtitle}</span>
    <span>내용 : ${vo.qcontents}</span>
    <span>날짜 : ${vo.qdate}</span>
    <a href="qnaupdate.jsp?qid=${vo.qid}&qtype=${vo.qtype}&qtitle=${vo.qtitle}&qdate=${vo.qdate}">수정</a>
	<a class="del" href="delete?qid=${vo.qid}">삭제</a><br>
</c:forEach> --%>
</body>
</html>
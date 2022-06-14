<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Study!</title>
<style type="text/css">
h1{
text-align: center;
}
</style>
</head>
<body>
	<h1>Hello World!</h1>
	<h3>${name}</h3> <!-- 이런 방법으로 controller의 값을 넘겨준다 -->
	<h3>${backNumber}</h3>
	<!-- 
		jstl 문법 
		if는 있지만 else는 없다 
	-->
	<c:if test="${backNumber == 7}">
		<h4>대한민국 만세</h4>
	</c:if>
	<c:if test="${name.equals('손흥민')}">
		<h4>코리아 만세</h4>
	</c:if>
	<!-- if else를 구현하고 싶을 때 -->
	<!-- 게시물이 있을 때 보여주고, 없을 땐 게시물이 없습니다 보여줄 때 사용 -->
	<c:choose> 
		<c:when test="${size == 100}"> <!-- when = if -->
			<h4>사이즈는 100 입니다.</h4>
		</c:when>
		<c:otherwise> <!-- otherwise = else -->
			<h4>사이즈는 100이 아닙니다.</h4>
		</c:otherwise>
	</c:choose>
	
	<!-- jsp 반복문. for 없음 -->
	<c:forEach items="${wsgList}" var="str"> <!-- for(String str : wsgList) 와 같음 -->
		<h4>${str}</h4> <!-- println(str)과 같음 -->
	</c:forEach>
	<c:forEach items="${actorList}" var="a">
		<h4>${a.name}, ${a.age}</h4> <!-- a에 들어있는 vo를 갖고 오기 위해서 vo클래스에 get 함수가 필요하다. -->
	</c:forEach>
	<c:forEach items="${mapList}" var="item">
		<h4>${item.no}</h4>
	</c:forEach>
		<h2>${mapList[0]}</h2>
		<h2>${mapList[0].no}</h2>
	
	<!-- for each를 for문처럼 사용하기 -->
	<c:forEach begin="1" end="5" var="i">
		<h4>${i}</h4> 
	</c:forEach>
</body>
</html>
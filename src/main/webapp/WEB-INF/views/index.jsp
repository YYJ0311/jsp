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
	<h3>${name}</h3> <!-- �̷� ������� controller�� ���� �Ѱ��ش� -->
	<h3>${backNumber}</h3>
	<!-- 
		jstl ���� 
		if�� ������ else�� ���� 
	-->
	<c:if test="${backNumber == 7}">
		<h4>���ѹα� ����</h4>
	</c:if>
	<c:if test="${name.equals('�����')}">
		<h4>�ڸ��� ����</h4>
	</c:if>
	<!-- if else�� �����ϰ� ���� �� -->
	<!-- �Խù��� ���� �� �����ְ�, ���� �� �Խù��� �����ϴ� ������ �� ��� -->
	<c:choose> 
		<c:when test="${size == 100}"> <!-- when = if -->
			<h4>������� 100 �Դϴ�.</h4>
		</c:when>
		<c:otherwise> <!-- otherwise = else -->
			<h4>������� 100�� �ƴմϴ�.</h4>
		</c:otherwise>
	</c:choose>
	
	<!-- jsp �ݺ���. for ���� -->
	<c:forEach items="${wsgList}" var="str"> <!-- for(String str : wsgList) �� ���� -->
		<h4>${str}</h4> <!-- println(str)�� ���� -->
	</c:forEach>
	<c:forEach items="${actorList}" var="a">
		<h4>${a.name}, ${a.age}</h4> <!-- a�� ����ִ� vo�� ���� ���� ���ؼ� voŬ������ get �Լ��� �ʿ��ϴ�. -->
	</c:forEach>
	<c:forEach items="${mapList}" var="item">
		<h4>${item.no}</h4>
	</c:forEach>
		<h2>${mapList[0]}</h2>
		<h2>${mapList[0].no}</h2>
	
	<!-- for each�� for��ó�� ����ϱ� -->
	<c:forEach begin="1" end="5" var="i">
		<h4>${i}</h4> 
	</c:forEach>
</body>
</html>
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
	<h1>HOME ȭ��</h1>
	<button type="button" onclick="movePage()">�Խ��� ȭ������ �̵�</button>
</body>
<script type="text/javascript">
	function movePage(){
		location.href ="/board"; //��Ʈ�ѷ��� �ּҸ� �Է��ϸ� ��
	}
</script>
</html>
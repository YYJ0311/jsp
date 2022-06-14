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
	<h1>HOME 화면</h1>
	<button type="button" onclick="movePage()">게시판 화면으로 이동</button>
</body>
<script type="text/javascript">
	function movePage(){
		location.href ="/board"; //컨트롤러의 주소를 입력하면 됨
	}
</script>
</html>
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
	<input id="userId" type="text" placeholder="���̵� �Է��ϼ���..." />
	<input id="userPassword" type="password" placeholder="��й�ȣ�� �Է��ϼ���..." />
	<button type="button" onclick="doLogin()">�α���</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="crossorigin="anonymous"></script>
<script type="text/javascript">
	function doLogin(){
		// �ٴҶ� �ڹٽ�ũ��Ʈ ����
		var userId = document.getElementById('userId').value;
		var userPassword = document.getElementById('userPassword').value;
		if(userId !== '' && userPassword !== ''){
	        var jsonData = {
	        		userId : userId,
	        		userPassword : userPassword
	        }
			$.ajax({
		          url : "/login",
		          type : "POST",
		          contentType : "application/json",
		          dataType : "json",
		          data : JSON.stringify(jsonData),
		          success : function(response){
						if(response){
							location.href = "/board"
						}
		          }
			})
		}
	}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
function getVerifiCode() {
	$("#yzm_img").prop('src','/validcode?a='+new Date().getTime());
}
</script>
</head>
<body>

	<h1>登录</h1>
	${error}
	<form action="/userLoginVali" method="post">
		用户名<input type="text" name="uname" ><br>
		密码<input type="password" name="pwd"><br>
		请输入如下验证码<input type="text" name="idencode"><br>
		<a href="javascript:getVerifiCode()">
		    <img id="yzm_img" style="cursor:pointer;width: 100px;height: 36px;margin: 5px 0 0 5px;border-radius: 3px;" title="刷新验证码" src="/validcode"/>
		</a><br>
		<input type="submit" value="登录">
	</form>

	
</body>
</html>

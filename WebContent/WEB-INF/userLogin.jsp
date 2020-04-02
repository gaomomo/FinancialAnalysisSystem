<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<title>登录界面</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/jquery/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/bootstrap-3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap-3.3.5/css/bootstrap-theme.css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap-3.3.5/css/bootstrap.css"
	type="text/css"></link>


</head>
<body>

	<div class="login-content">
		<div class="login-title">
			<h1>登录</h1>
		</div>
		<div class="login">
			<form id="form" action="../user/verifyLogin" method="post">
				 <div>
					<div>
						<input id="username" type="text" name="username" placeholder="用户名" />
					</div>

				</div>
				<div>
					<div>
						<input id="pwd" type="password" name="password" placeholder="密码" />
					</div>
				</div> 
				<div>
					<input type="text" id="user_input_verifyCode"
						name="user_input_verifyCode" placeholder="验证码" maxlength="5">

					<span class="code_img"> <img
						src="${pageContext.request.contextPath }/user/getVerify"
						width="110" height="40" id="verifyCodeImage">
					</span> <span> <a href="" id="changeVerifImageRegister"
						onclick="javascript:changeImage();">看不清，换一张</a>
					</span>

				</div>
				<input id="commit" type="submit" value="登录" >
			</form>



		</div>
	</div>
	<script type="text/javascript">
	function genTimestamp() {    
        var time = new Date();    
        return time.getTime();    
    } 
	 function changeImage() {
         $('#verifyCodeImage').attr('src',
                 '${pageContext.request.contextPath }/user/getVerify');
     }
	 //登录，目前只检测验证码
	 function login(){
		 var user_input_verifyCode=$("#user_input_verifyCode").val();
		 $.ajax({
				type : 'post',
				url : "${pageContext.request.contextPath}/login/login",
				data:{verifyCode:user_input_verifyCode},
				//dataType : "json",
				success : function(data) {	
					
				},
				error : function() {
					alert("查询失败");
				}
			}); 
	 }
	
	 </script>
</body>
</html>
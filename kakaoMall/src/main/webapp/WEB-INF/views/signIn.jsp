<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<title>카카오프렌즈 온라인 스토어</title>
<jsp:include page="./layout/header.jsp"/>
<style>

#joinForm{

    width: 500px;
    margin: 0px auto;
}

#joinImg{
	width: 500px;
    margin: 0px auto;
    display: block;

}
</style>
<script>
$(document).ready(function(){

var result='${result}';
if(result!=''){
	 alert(result);
	}
});
</script>
</head>
<body>
<header style="margin-top: 70px;">
	<img src="${pageContext.request.contextPath}/resources/imgs/login.png" style="width:100%;">
</header>

<div id="login">
	<div id="loginForm">
	<form  style="width: 70%; margin: 0px auto; padding-top:50px;"method="post" action="login">
	<div class="form-group">
		<label for="id" class="cols-sm-2 control-label">아이디</label>
		<div class="cols-sm-10">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				<input type="text" class="form-control id" name="id"  placeholder="아이디를 입력해주세요" style="width:411px; height:34px;"/>
			</div>
		</div>
	</div>

		<div class="form-group">
		<label for="password" class="cols-sm-2 control-label">비밀번호</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="password" class="form-control password" name="password"   placeholder="비밀번호를 입력해주세요"  />
					</div>
				</div>
		</div>
		<div class="form-group ">
		<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="로그인"/>
		</div>
	</form>
	
	<div id="footerLogin" style="display:block; width:300px; margin:20px auto;">
			<a id="findID">아이디 찾기</a>
			<a id="findPW">비밀번호찾기</a>
			<a id="join" href="signUp" style="color:black;">회원가입</a>
	</div>
	</div>
	
	</div>


<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>
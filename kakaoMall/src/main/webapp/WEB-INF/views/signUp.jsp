<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<title>카카오프렌즈 온라인 스토어</title>
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
</head>
<body>
<jsp:include page="./layout/header.jsp"/>
<header style="margin-top: 70px;">
	<img src="${pageContext.request.contextPath}/resources/imgs/join.png" style="width:100%;">
</header>
		<form id="joinForm" class="form-horizontal" method="post" action="userAdd">
		
		<div class="form-group">
		<label for="id" class="cols-sm-2 control-label">아이디</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="id" id="id"  placeholder="아이디를 입력해주세요" style="width:493px; height:34px;"/>
					</div>
				</div>
		</div>
		
		<div class="form-group">
		<label for="password" class="cols-sm-2 control-label">비밀번호</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="password" class="form-control" name="password" id="password"  placeholder="비밀번호를 입력해주세요"  />
					</div>
				</div>
		</div>

		<div class="form-group">
		<label for="confirm" class="cols-sm-2 control-label">비밀번호 확인</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="비밀번호를 한번 더 입력해주세요"/>
					</div>
				</div>
		</div>
		
		<div class="form-group">
		<%--@declare id="username"--%><label for="username" class="cols-sm-2 control-label">이름</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="name" id="name"  placeholder="이름을 입력해주세요"/>
					</div>
				</div>
		</div>

		<div class="form-group">
		<%--@declare id="birth"--%><label for="birth" class="cols-sm-2 control-label">생년월일</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
						<input type="date" class="form-control" name="birth" id="birth"  placeholder="생년월일을 입력해주세요"/>
					</div>
				</div>
		</div>


		
		<div class="form-group">
		<label for="email" class="cols-sm-2 control-label">이메일</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="email" id="email"  placeholder="이메일 주소를 입력해주세요"/>
					</div>
				</div>
		</div>



		<div class="form-group">
		<label for="phone" class="cols-sm-2 control-label">연락처</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="phone" id="phone"  placeholder="연락처를 입력해주세요"/>
					</div>
				</div>
		</div>
		
		<div class="form-group">
		<label for="address" class="cols-sm-2 control-label">주소</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="address" id="address"  placeholder="주소를 입력해주세요"/>
					</div>
				</div>
		</div>


		<div class="form-group ">
			<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Register"/>
		</div>
		</form>
<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>
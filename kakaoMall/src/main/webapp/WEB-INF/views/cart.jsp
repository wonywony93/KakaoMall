<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
	<img src="${pageContext.request.contextPath}/resources/imgs/buy.png" style="width:100%;">
</header>

	<table class="table table-hover" id="table" style="margin-top:20px;">
		<thead>
			<tr>
				<th class="text-center" style="cursor: pointer;">번호</th>
				<th class="text-center" style="cursor: pointer;">제품명</th>
				<th class="text-center" style="cursor: pointer;">수량</th>
				<th class="text-center" style="cursor: pointer;">금액</th>
				<th class="text-center" style="cursor: pointer;">구매시간</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="bean" items="${clist}" varStatus="status"> 
 				<tr>
					<td class="text-center" style="cursor: pointer;">${status.count}</td>
					<td class="text-center" style="cursor: pointer;">${bean.name}</td>
					<td class="text-center" style="cursor: pointer;">${bean.amount}</td>
					<td class="text-center" style="cursor: pointer;">${bean.totalMoney}</td>
					<td class="text-center" style="cursor: pointer;">${bean.purchaseTime}</td>
				</tr>
			</c:forEach> 

		</tbody>
	</table>
	



<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
<jsp:include page="./layout/header.jsp"></jsp:include>


  <title>카카오프렌즈 온라인 스토어</title>
	
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

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/main_slider1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/main_slider2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/main_slider3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<jsp:include page="./layout/footer.jsp"></jsp:include>


</body>

</html>

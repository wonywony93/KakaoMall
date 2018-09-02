<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>카카오프렌즈 온라인 스토어</title>
	<jsp:include page="./layout/header.jsp"></jsp:include>
	<script>
	
	function selectOne(code){
		$.ajax({
			type:"POST",
			url:"./detail",
			data:{"code":code},
			success:function(data){
				
				console.log(data);
				
				$("#img1").attr("src",'${pageContext.request.contextPath}/resources/imgs/product/'+data.img1+'.jpg');
				$("#img2").attr("src",'${pageContext.request.contextPath}/resources/imgs/product/'+data.img2+'.jpg');
				$("#img3").attr("src",'${pageContext.request.contextPath}/resources/imgs/product/'+data.img3+'.jpg');
				
				$('#productName').text(data.name);
				$('#productContent').text(data.content);
				$('#code').val(''+data.code);
				$('#price').val(''+data.price);
			}
		});		
	}
	
	$(document).ready(function(){
		
		
		
		$('#buyBtn').click(function(){
		var id='${id}';
		if(id==''){
			
			alert('로그인해주세요');
			return;
		}
			$('#buyForm').submit();
			
		});
		
		
	});
	
	
	</script>
  </head>

  <body id="page-top">

	<header style="margin-top: 70px;">
	<img src="${pageContext.request.contextPath}/resources/imgs/category.PNG" style="width:100%;">
	</header>


	
    <section class="portfolio" id="portfolio">
      <div class="container">
        <div class="row">
        <c:forEach items="${categoryList }" var="bean">
          <div class="col-md-10 col-lg-3">
            <a class="portfolio-item d-block mx-auto" onclick="javascript:selectOne('${bean.code}');" href="#portfolio-modal-1">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/imgs/product/${bean.img1 }.jpg" alt="">
            <span style="font-size:15pt;display:block;text-align:center;color:black;">${bean.name }</span>
            <span style="color:black;display:block;text-align:center;">${bean.price }WON</span>
            </a>
          </div>
        </c:forEach>
         
        </div>
      </div>
    </section>

<jsp:include page="./layout/footer.jsp"></jsp:include>
  
  
  
   <!-- Portfolio Modal  -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
         <form id="buyForm" method="POST" action="buy">
          <div class="row">
            <div class="col-lg-8 mx-auto ">
             <!-- <img  src="./imgs/product/product1_1.jpg" style="width:200px; height:200px;"> -->
             
             <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" id="img1" src="${pageContext.request.contextPath}/resources/imgs/product/product1_1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" id="img2" src="${pageContext.request.contextPath}/resources/imgs/product/product1_2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" id="img3" src="${pageContext.request.contextPath}/resources/imgs/product/prouduct1_3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
             
              <hr class="star-dark mb-5">
              <h4 id="productName" style="margin-bottom:20px;"></h4>
              <p id="productContent"class="mb-5"></p>
              <input type="hidden" id="price" name="price"/>
              <div>
              <p>수량</p>
              <input id="code" type="hidden" name="code"/>
              <input type="number" name="amount" />
              </div>
              <input id="buyBtn" type="button" class="btn btn-primary btn-lg rounded-pill" value="구입하기" >
            </div>
          </div>
         </form>
        </div>
      </div>
    </div>
  
  
  
  </body>

</html>

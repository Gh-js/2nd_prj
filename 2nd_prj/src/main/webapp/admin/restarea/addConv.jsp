<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="icon" href="../../common/icon_images/marker/favicon.png">
<!DOCTYPE html>
<html lang="en">
<style>
#inputRest {
	width: 600px;
	display: block; /* 블록 수준 요소로 변환 */
	margin: 0 auto; /* 가운데 정렬 */
}

#btnInput {
	width: 600px;
	display: block; /* 블록 수준 요소로 변환 */
	margin: 0 auto; /* 가운데 정렬 */
}

#fc {
	margin-top: 30px;
	margin-bottom: 30px;
	margin-left: 300px;
}

#hw {
	margin-top: 30px;
	margin-bottom: 30px;
	margin-right: 150px;
}

.flex-container {
	margin-top: 50px;
	display: flex;
	justify-content: space-between; /* 양쪽에 분산 정렬 */
	border: 1px solid #D2D2D2;
	border-radius: 10px;
}
</style>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>RestArea</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="../../common/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnInput").click(function(){
		var confirmation = confirm('편의시설을 추가하시겠습니까?');
		   
		if(confirmation){
	        // 데이터를 수집하거나 사용자 입력을 가져옵니다.
	        var restAreaNum = $("#restAreaNum").val();
	        var convImage = $("#convImage").val(); 
	        var convName = $("#convName").val(); 
	        var convTel = $("#convTel").val();
	        var convDetail = $("#convDetail").val();

	        // 데이터를 객체로 구성
	        var data = {
	        	restAreaNum: restAreaNum,
	        	convImage: convImage,
	        	convName: convName,
	        	convTel: convTel,
	        	convDetail: convDetail,
	        };

	        // AJAX 요청을 수행
	        $.ajax({
	            url: "ajax/ajax_addConv.jsp",
	            type: "POST",
	            data: data,
	            dataType: "json",
	            error: function(xhr){
	                alert("문제가 발생하였습니다. 값을 다시 확인해주세요.");
	                console.log(xhr.status);
	            },
	            success: function(jsonObj){
	                    alert("편의시설이 추가되었습니다.");
	                    window.location.href = 'manageConv.jsp?raNo='+restAreaNum;
	            }
	        });//ajax
		}else{
			alert("취소하셨습니다.");
		}
	    });//click
	});//ready
	
	function displaySelectedImage() {
		 const input = document.getElementById("convImage");
		    const image = document.getElementById("selected-image");

		    if (input.files && input.files[0]) {
		        const reader = new FileReader();

		        reader.onload = function (e) {
		            image.src = e.target.result;
		        };

		        reader.readAsDataURL(input.files[0]);
		    }
    }
</script>

</head>
<body class="sb-nav-fixed">
	<!-- 해더 nav -->
        <jsp:include page="../admin_include/header_nav.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<!-- 사이드바 nav -->
            <jsp:include page="../admin_include/side_bar.jsp"></jsp:include>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">편의시설 추가</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">대시보드</a></li>
						<li class="breadcrumb-item"><a href="manageConv.jsp">편의시설 관리</a></li>
						<li class="breadcrumb-item active">편의시설 추가</li>
					</ol>

					<div class="flex-container">
						<div id="fc" class="align-self-center">
						
							<div class="card" style="width: 18rem;">
        						<img id="selected-image" src="../../common/logo_images/logo.png" class="card-img-top">
							    <div class="card-body">
							        <input class="form-control form-control-sm" id="convImage" type="file" onchange="displaySelectedImage()">
							    </div>
    						</div>
							
						</div>

						<div id="hw" class="align-self-center">
						
							<% String raNo = request.getParameter("raNo"); %>
						<label id="inputRest" class="form-label">휴게소번호</label> 
						<input id="restAreaNum" class="form-control" type="text" value="<%=raNo %>" readonly="readonly" disabled><br/>
						
							<label id="inputRest" class="form-label">시설명</label> 
							<input id="convName" class="form-control" type="text" placeholder="Default input"><br/>

							<label id="inputRest" class="form-label">비고</label> 
							<input id="convDetail" class="form-control" type="text" placeholder="Default input"><br/>

						</div>
					</div>
					<br />
					<button id="btnInput" type="button" class="btn btn-primary btn-lg"
						style="margin-top: 30px;">추가</button>
				</div>
			</main>
			<jsp:include page="../admin_include/footer.jsp"></jsp:include>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>

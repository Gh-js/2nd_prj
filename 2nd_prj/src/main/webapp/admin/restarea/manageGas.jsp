<%@page import="ra.user.restarea.GasVO"%>
<%@page import="ra.user.restarea.RestDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<style>
.table {
	width: 100%;
}

.table th:nth-child(1) {
	width: 10px; /* 첫 번째 열의 너비 설정 */
}

.table th:nth-child(2) {
	width: 100px; /* 첫 번째 열의 너비 설정 */
}

.table th:nth-child(3) {
	width: 200px; /* 두 번째 열의 너비 설정 */
}

.table th:nth-child(4) {
	width: 200px; /* 세 번째 열의 너비 설정 */
}
/* 나머지 열들에 대한 너비 설정 */
#updateBtn {
	margin-top: 100px;
	margin-bottom: 55px;
	margin-left: 550px;
	width: 600px;
}
</style>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="../../common/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	$(function() {

	});//ready
</script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Start Bootstrap</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="login.jsp">로그인</a></li>
					<li><a class="dropdown-item" href="register.jsp">회원가입</a></li>
					<li><a class="dropdown-item" href="#!">로그아웃</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">메뉴</div>
						<a class="nav-link" href="index.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 대쉬보드
						</a>
						<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                레이아웃
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.jsp">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.jsp">Light Sidenav</a>
                                </nav>
                            </div> -->
						<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a> -->
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.jsp">Login</a> <a
											class="nav-link" href="register.jsp">Register</a>
										<!--                                             <a class="nav-link" href="password.jsp">Forgot Password</a> -->
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.jsp">401 Page</a> <a
											class="nav-link" href="404.jsp">404 Page</a> <a
											class="nav-link" href="500.jsp">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>

						<!--   <a class="nav-link" href="charts.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a> -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 휴게소 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="manageFood.jsp">
									<div class="sb-nav-link-icon">
										<i class="fas fa-table"></i>
									</div> 음식
								</a> <a class="nav-link" href="manageConv.jsp">
									<div class="sb-nav-link-icon">
										<i class="fas fa-table"></i>
									</div> 편의시설
								</a> <a class="nav-link" href="manageBrand.jsp">
									<div class="sb-nav-link-icon">
										<i class="fas fa-table"></i>
									</div> 매장시설
								</a> <a class="nav-link" href="manageGas.jsp">
									<div class="sb-nav-link-icon">
										<i class="fas fa-table"></i>
									</div> 주유소 정보
								</a> <a class="nav-link" href="addRest.jsp">
									<div class="sb-nav-link-icon">
										<i class="fas fa-table"></i>
									</div> 휴게소 추가
								</a>
							</nav>
						</div>

						<a class="nav-link" href="manageReview.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 리뷰 관리
						</a> <a class="nav-link" href="manageService.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 문의
						</a> <a class="nav-link" href="manageUser.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 회원 관리
						</a> <a class="nav-link" href="manageNotice.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 공지사항
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">주유소 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.jsp">대쉬보드</a></li>
						<li class="breadcrumb-item active">주유소 관리</li>
					</ol>

					<div>
						<div style="margin-top: 75px">
							<h4>주유소정보</h4>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">주유소명</th>
										<th scope="col">정유사</th>
									</tr>
								</thead>
								<tbody>
									<%
										RestDAO rDAO = RestDAO.getInstance();
										List<GasVO> gasList = rDAO.selectGas("1");
										for(int i=0; i<gasList.size(); i++){
										GasVO gVO = gasList.get(i);
										%>
										<tr>
											<td></td>
											<td><%=gVO.getGasName() %></td>
											<td><%=gVO.getGasBrand() %></td>
										</tr>
										<%
										}
										%>
								</tbody>
							</table>
						</div>

						<div style="margin-top: 75px">
							<h4>유가정보</h4>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First</th>
										<th scope="col">Last</th>
										<th scope="col">Handle</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div style="margin-top: 75px">
							<h4>비고</h4>
							<ul>
								<li>세차장 유무:</li>
							</ul>
						</div>

					</div>
				</div>
				<button type="button" id="updateBtn" class="btn btn-primary btn-lg">수정</button>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2023</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
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

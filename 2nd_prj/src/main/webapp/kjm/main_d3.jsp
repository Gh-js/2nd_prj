<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>        
<!DOCTYPE html>
<html>
<head>
<jsp:include page="main_e3.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.151/jsp_prj/common/main/favicon.ico">
<!-- boost -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Jquery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
  <body class="d-flex flex-column h-100">
            <!-- <main class=" flex-shrink-0"> -->
                <header>
                <!-- Navigation-->
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container px-5">
                        <a class="navbar-brand" href="index.html">휴게소 정보검색</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation"><span
                                class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                                <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                                <li class="nav-item"><a class="nav-link" href="faq.html">FAQ</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                        <li><a class="dropdown-item" href="blog-home.html">Blog Home</a></li>
                                        <li><a class="dropdown-item" href="blog-post.html">Blog Post</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#"
                                        role="button" data-bs-toggle="dropdown" aria-expanded="false">Portfolio</a>
                                    <ul class="dropdown-menu dropdown-menu-end"
                                        aria-labelledby="navbarDropdownPortfolio">
                                        <li><a class="dropdown-item" href="portfolio-overview.html">Portfolio
                                                Overview</a></li>
                                        <li><a class="dropdown-item" href="portfolio-item.html">Portfolio Item</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                </header>
                <section class="bg-dark py-5" id="features">
                    <!-- ===============================================사이드바================================================= -->
                <div id="all-wrapper">
                    <div id="page-wrapper">
                        <div id="sidebar-wrapper">
                            <ul class="nav nav-tabs" id="myTab" role="tablist" style="border-bottom-width: 0px; padding-left: 20px;">
                                <!-- <li class="sidebar-brand nav-item" role="presentation">
                                    <a href="#">
                                    <img src="../img/logo_white.png">
                                    </a>
                                </li> -->
                                <li class="nav-item" role="presentation">
                                    <input class="nav-link active" id="search-tab" data-bs-toggle="tab" data-bs-target="#search" type="button" role="tab" aria-controls="search" aria-selected="true" value="검색">
<!--                                     <button class="nav-link active" id="search-tab" data-bs-toggle="tab" data-bs-target="#search" type="button" role="tab" aria-controls="search" aria-selected="true">검색</button> -->
                                </li>
                                <li class="nav-item" role="presentation">
                                    <input class="nav-link" id="local-tab" data-bs-toggle="tab" data-bs-target="#local" type="button" role="tab" aria-controls="local" aria-selected="false" value="지역별">
                                </li>
                                <li class="nav-item" role="presentation">
                                    <input class="nav-link" id="highway-tab" data-bs-toggle="tab" data-bs-target="#highway" type="button" role="tab" aria-controls="highway" aria-selected="false"value="고속도로별">
                                </li>
                                
                            </ul>
                        </div>
                    </div>    
                        <!-- /사이드바 -->
                    <!-- 검색창, 지역별, 고속도로별 -->
                    <div id="menu-box"class="tab-content" >
                        <!-- 검색창 -->
                        <div class="tab-pane active" id="search" role="tabpanel" aria-labelledby="search-tab">
                            <div id="menu_wrap" class="bg_white" >
                                <div class="option">
                                    <form onsubmit="searchPlaces(); return false;">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control" placeholder="검색할 곳을 입력하세요" aria-label="Recipient's username"
                                                id="keyword" size="15" aria-describedby="button-addon2" >
                                            <input class="btn btn-success " type="button" id="searchBtn" value="검색하기" />
<!--                                             <input class="btn btn-outline-secondary btn-success" type="button" id="searchBtn" value="검색하기" /> -->
                                        </div>
                                            <div class="input-group mb-3">
                                                <input type="text" id="strInput" class="form-control" readonly="readonly">
                                                <span class="btn btn-success" id="inputGroup-sizing-default" style="width: 90px">출발지</span>
<!--                                                 <input type="text" id="strInput" class="form-control" aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default"readonly="readonly">
                                                <span class="input-group-text" id="inputGroup-sizing-default">출발지</span> -->
                                                <input type="hidden" id="strHidden">
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="text" id="endInput" class="form-control" aria-label="Sizing example input"
                                                    aria-describedby="inputGroup-sizing-default" readonly="readonly">
                                                <span class="btn btn-success" id="inputGroup-sizing-default"style="width: 90px">도착지</span>
                                                <input type="hidden" id="endHidden">
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="reset" id="resetBtn" value="초기화" class="btn btn-success" >
                                                <input type="button" id="directionsBtn"value="길찾기"  class="btn btn-success" >
<!--                                                 <input type="reset" id="resetBtn" value="초기화" class="btn btn-outline-secondary " >
                                                <input type="button" id="directionsBtn"value="길찾기"  class="btn btn-outline-secondary" > -->
                                            </div>
                                    </form>
                                </div>
                            </div>
                                <!-- 검색결과 div -->
                                <div id="search-results">
                                    <hr>
                                    <ul id="placesList" class="list list-inline"></ul>
                                    <ul id="pagination"class="pagination justify-content-center"></ul>
                                </div>  
                        </div>
                        <!-- 다영 -->
                        <div class="tab-pane" id="local" role="tabpanel" aria-labelledby="local-tab">
                            지역별 휴게소
                                
                        </div>
                        <!-- 다영 -->
                            
                        <!-- 지성 -->
                        <div class="tab-pane" id="highway" role="tabpanel" aria-labelledby="highway-tab">
                            고속도로별 휴게소
                        </div>
                        <!-- 지성 -->
                    </div>
                    
                    <!-- 지도 -->
                    <div id="map" >
                    </div>
                </div>        


                </section>
            <!-- </main> -->
            <!-- Footer-->
            <footer class="bg-dark py-4 mt-auto">
                <div class="container px-5">
                    <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                        <div class="col-auto">
                            <div class="small m-0 text-white">Copyright &copy; Your Website 2023</div>
                        </div>
                        <div class="col-auto">
                            <a class="link-light small" href="#!">Privacy</a>
                            <span class="text-white mx-1">&middot;</span>
                            <a class="link-light small" href="#!">Terms</a>
                            <span class="text-white mx-1">&middot;</span>
                            <a class="link-light small" href="#!">Contact</a>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <!-- <script src="js/scripts.js"></script> -->
        </body>

        </html>
</html>
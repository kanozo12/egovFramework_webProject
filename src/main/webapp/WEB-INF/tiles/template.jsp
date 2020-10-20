<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link rel="stylesheet" href="/css/egovframework/style.css">
	
	<link rel="stylesheet" href="/css/egovframework/common.css">
    
    <script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <script src="/webjars/popper.js/1.15.0/umd/popper.min.js"></script>

	 <!-- ******************* -->
    <!-- Swiper Api -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <!-- *******************/ -->

    <!-- fontAwesome -->
    <script src="https://kit.fontawesome.com/b79e81a6e4.js" crossorigin="anonymous"></script>
    
     <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c255ddb735f12a7650d5e49387ff98a"></script>
</head>

<body>
    <tiles:insertAttribute name="header" />
       
    <tiles:insertAttribute name="body" />
  
  	<div class="margin_area"></div>
  
    <tiles:insertAttribute name="footer" />
   
	<script src="/js/egovframework//slide.js"></script>
	
	 <script>
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(37.58508333197116, 126.88551942641537), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };

        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    </script>
</body>

</html>
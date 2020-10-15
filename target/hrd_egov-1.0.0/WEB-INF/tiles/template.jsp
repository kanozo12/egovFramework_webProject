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
</head>

<body>
    <tiles:insertAttribute name="header" />
       
    <tiles:insertAttribute name="body" />
  
  	<div class="margin_area"></div>
  
    <tiles:insertAttribute name="footer" />
   
	<script src="/js/slide.js"></script>
</body>

</html>
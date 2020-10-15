<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link rel="stylesheet" href="/css/egovframework/prism.css" />
    <link rel="stylesheet" href="/css/egovframework/list.css" />
    <link rel="stylesheet" href="/webjars/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
    <script src="/webjars/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="/webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/b79e81a6e4.js" crossorigin="anonymous"></script>
    <script>
        $(function () {
            if (document.body.clientHeight > window.innerHeight - 24) {
                $("footer").removeClass("fixed-bottom");
                $("footer").addClass("mt-3");
            }
        });
    </script>
</head>

<body>
    <tiles:insertAttribute name="header" />
       
    <tiles:insertAttribute name="body" />
  
    <tiles:insertAttribute name="footer" />
   
   	<script src="/webjars/tinymce/4.8.5/tinymce.min.js"></script>
	<script src="/js/app.js"></script>
	<script src="/js/comment.js"></script>
</body>

</html>
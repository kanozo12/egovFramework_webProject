<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
</head>
<link rel="stylesheet" href="/css/egovframework/EgovLoginUsrCustom.css">
<title>Document</title>
<script type="text/javaScript" language="javascript">
		function checkLogin(userSe) {
		    // 일반회원
		    if (userSe == "GNR") {
		        document.loginForm.rdoSlctUsr[0].checked = true;
		        document.loginForm.rdoSlctUsr[1].checked = false;
		        document.loginForm.rdoSlctUsr[2].checked = false;
		        document.loginForm.userSe.value = "GNR";
		    // 기업회원
		    } else if (userSe == "ENT") {
		        document.loginForm.rdoSlctUsr[0].checked = false;
		        document.loginForm.rdoSlctUsr[1].checked = true;
		        document.loginForm.rdoSlctUsr[2].checked = false;
		        document.loginForm.userSe.value = "ENT";
		    // 업무사용자
		    } else if (userSe == "USR") {
		        document.loginForm.rdoSlctUsr[0].checked = false;
		        document.loginForm.rdoSlctUsr[1].checked = false;
		        document.loginForm.rdoSlctUsr[2].checked = true;
		        document.loginForm.userSe.value = "USR";
		    }
		}
		
		function actionLogin() {
			if (document.loginForm.id.value =="") {
		        alert("<spring:message code="comUatUia.validate.idCheck" />"); <%-- 아이디를 입력하세요 --%>
		    } else if (document.loginForm.password.value =="") {
		        alert("<spring:message code="comUatUia.validate.passCheck" />"); <%-- 비밀번호를 입력하세요 --%>
		    } else {
		        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
		        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
		        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
		        document.loginForm.submit();
		    }
		}
		
		function actionCrtfctLogin() {
		    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
		    document.defaultForm.submit();
		}
		
		function goFindId() {
		    document.defaultForm.action="<c:url value='/uat/uia/egovIdPasswordSearch.do'/>";
		    document.defaultForm.submit();
		}
		
		function goRegiUsr() {
			
			var useMemberManage = '${useMemberManage}';
		
			if(useMemberManage != 'true'){
				<%-- 사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요. --%>
				alert("<spring:message code="comUatUia.validate.userManagmentCheck" />");
				return false;
			}
		
		    var userSe = document.loginForm.userSe.value;
		 
		    // 일반회원
		    if (userSe == "GNR") {
		        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
		        document.loginForm.submit();
		    // 기업회원
		    } else if (userSe == "ENT") {
		        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmEntrprs.do'/>";
		        document.loginForm.submit();
		    // 업무사용자
		    } else if (userSe == "USR") {
		    	<%-- 업무사용자는 별도의 회원가입이 필요하지 않습니다. --%>
		        alert("<spring:message code="comUatUia.validate.membershipCheck" />");
		    }
		}
		
		function goGpkiIssu() {
		    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
		    document.defaultForm.submit();
		}
		
		function setCookie (name, value, expires) {
		    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
		}
		
		function getCookie(Name) {
		    var search = Name + "=";
		    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
		        offset = document.cookie.indexOf(search);
		        if (offset != -1) { // 쿠키가 존재하면
		            offset += search.length;
		            // set index of beginning of value
		            end = document.cookie.indexOf(";", offset);
		            // 쿠키 값의 마지막 위치 인덱스 번호 설정
		            if (end == -1)
		                end = document.cookie.length;
		            return unescape(document.cookie.substring(offset, end));
		        }
		    }
		    return "";
		}
		
		function saveid(form) {
		    var expdate = new Date();
		    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
		    if (form.checkId.checked)
		        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
		    else
		        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
		    setCookie("saveid", form.id.value, expdate);
		}
		
		function getid(form) {
		    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
		}
		
		function fnInit() {
			/* if (document.getElementById('loginForm').message.value != null) {
			    var message = document.getElementById('loginForm').message.value;
			} */
		    /* if ("<c:out value='${message}'/>" != "") {
		        alert("<c:out value='${message}'/>");
		    } */
		
		    /* *************************
		    document.loginForm.rdoSlctUsr[0].checked = false;
		    document.loginForm.rdoSlctUsr[1].checked = false;
		    document.loginForm.rdoSlctUsr[2].checked = true;
		    document.loginForm.userSe.value = "USR";
		    document.loginForm.id.value="TEST1";
		    document.loginForm.password.value="rhdxhd12";
		    **************************** */
		
		    //getid(document.loginForm);
		    // 포커스
		    //document.loginForm.rdoSlctUsr.focus();
		    
		    getid(document.loginForm);
		    
		    fnLoginTypeSelect("typeGnr");
		    
		    <c:if test="${not empty fn:trim(message) &&  message ne ''}">
		    alert("<c:out value='${message}'/>");
		    </c:if>
		    
		}
		
		function fnLoginTypeSelect(objName){
		
				document.getElementById("typeGnr").className = "";
				document.getElementById("typeEnt").className = "";
				document.getElementById("typeUsr").className = "";
				
				document.getElementById(objName).className = "on";
				
				if(objName == "typeGnr"){ //일반회원
					document.loginForm.userSe.value = "GNR";
				}else if(objName == "typeEnt"){	//기업회원
					 document.loginForm.userSe.value = "ENT";
				}else if(objName == "typeUsr"){	//업무사용자
					 document.loginForm.userSe.value = "USR";
				}
			
		}
		
		function fnShowLogin(stat) {
			if (stat < 1) {	//일반로그인
				$(".login_input").eq(0).show();
				$(".login_input").eq(1).hide();
			} else {		//공인인증서 로그인
				$(".login_input").eq(0).hide();
				$(".login_type").hide();
				$(".login_input").eq(1).show();
			}
		}
		
	</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login">
			<div class="login-bg"></div>
			<form name="loginForm" id="loginForm" class="login-form" action="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
				<span class="form-title">Login to continue</span>
				<div class="form-group">
					<input type="text" name="id" maxlength="10"
						class="form-control input00" id="validationServer01"
						placeholder="ID" required>
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control input00"
						placeholder="Password">
				</div>
				<div class="form-bottom">
					<div class="input-checkbox">
						<input type="checkbox"
							onclick="javascript:saveid(document.loginForm);" id="checkId">
						<label class="label-checkbox" for="ckb1">Remember me</label>

					</div>
					<a href="#" class="txt1"> Forget Password? </a>
				</div>
				<div class="container-login-form-btn">
					<button class="login-form-btn">Login</button>
				</div>
				<div class="text-sign">
					<span class="txt2">or sign up using</span>
				</div>
				<div class="login-form-social">
					<a href="#" class="login-form-social-item bg2"> <i
						class="fab fa-facebook-f"></i>
					</a> <a href="#" class="login-form-social-item bg1"> <i
						class="fab fa-twitter"></i>
					</a>
				</div>
				<input name="userSe" type="hidden" value="GNR" /> <input
					name="j_username" type="hidden" />
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>
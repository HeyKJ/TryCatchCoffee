<!-- 
/*
 *  Description :  로그인 페이지
 *  Created : 2016-06-26
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
<link href="bootstrab/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrab/css/freelancer.css" rel="stylesheet">
<link href="bootstrab/css/heroic-features.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="bootstrab/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- jQuery -->
<script src="bootstrab/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrab/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="bootstrab/js/classie.js"></script>
<script src="bootstrab/js/cbpAnimatedHeader.js"></script>

<!-- Contact Form JavaScript -->
<script src="bootstrab/js/jqBootstrapValidation.js"></script>
<script src="bootstrab/js/contact_me.js"></script>

<!-- Custom Theme JavaScript -->
<script src="bootstrab/js/freelancer.js"></script>
<script>
	$(function() {
		$(".div-fade").fadeIn(400);
	})
</script>
<!-- Header -->
<jsp:include page="layout/Header.jsp" />

<div class="container">
	<h1>회원 가입이 완료되었습니다. <i class="fa fa-check-circle" aria-hidden="true"></i></h1>
</div>

<!-- Footer -->
<jsp:include page="layout/Footer.jsp" />

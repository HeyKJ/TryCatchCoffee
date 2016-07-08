<!-- 
/*
 *  Description :  Main 페이지
 *  Created : 2016-06-25
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

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
<style>
body {
	background-color: #18bc9c
}
</style>
</head>
<body id="page-top" class="index">
	<!-- Header -->
	<jsp:include page="/WEB-INF/layout/Header.jsp" />
	<!-- Main-Content Field -->
	<header id="Main-Header" style="margin-bottom: 0px !important;">
		<div id="Main-Container" class="container">
			<div id="Main-Row" class="row">
				<div id="Main-Div" class="col-lg-12">
					<!-- First Main Page  -->
					<div id="Main-Content" class="intro-text div-fade">
						<span class="name">Start TryCoffee</span> <span class="skills">Order
							Use Online and Save your Time</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Footer -->
	<jsp:include page="/WEB-INF/layout/Footer.jsp" />
</body>
</html>
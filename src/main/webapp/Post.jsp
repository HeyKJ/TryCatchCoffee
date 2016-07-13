<%@ page contentType="text/html; charset=EUC-KR" isELIgnored="false"%>
<html>
<head><title>JSPBoard</title>
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
</head>
<body>
<div class="panel panel-default panel-table" style="width:70%">
	<div class=panel-title>
		<table class="table">
		 <tr>
		  <td bgcolor=84F399 height=25 align=center>글쓰기</td>
		 </tr>
		</table>
	</div>
	<div class=panel-body>
		<table class="table table-striped table-bordered table-list">
			<form name="post_form" method="post" action="front" >
				 <tr>
				  <td align=center>
					   <table class=table>
					    <tr>
					     <td width=12%>제 목</td>
					     <td width=88%><input type=text name=board_subject size=50 maxlength=30></td>
					    </tr>
					    <tr>
					     <td width=12% >내 용</td>
					     <td width=88%><textarea name=board_content rows=10 cols=50></textarea></td>
					    </tr>
					    <tr>
					     <td width=12%>비밀번호</td> 
					     <td width=88% ><input type=password name=board_password size=15 maxlength=15></td>
					    </tr>		
					   </table>
				    	<button type="submit" class="btn btn-primary" id="post_submit_button">작성 완료</button>
				    	<input type="hidden" name="cmd" value="Post_Submit"/>				
				  </td>
				 </tr>
			</form> 
		</table>
	</div>
</div>
</body>
</html>
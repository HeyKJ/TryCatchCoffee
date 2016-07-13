<%@ page contentType="text/html; charset=EUC-KR" isELIgnored="false"%>
<html>
<head> <title>JSPBoard</title>
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
<script>
$(
		function(){
			$("#update_submit_button").click(
				function(){
					$("#front_form").submit();
				}		
			);
		}
	);	
</script>
<body>
<div class="panel panel-default panel-table" style="width:70%; " align="center">
	<div class="panel-head" style="background-color: orange">
		<h3>수정하기</h3>
	</div>
	<div class="panel-body">
		<form name=form method=post action="front" >
			<table class="table" style="border: none;">
			<tr>
		     <td width=10%>제 목</td>
		     <td width=80%>
			  <input type=text name=subject size=50 maxlength=50 value="${board.board_subject }">
			 </td>
		    <tr>
		     <td width=10%>내 용</td>
		     <td width=80%>
			  <textarea name=content rows=10 cols=50>${board.board_content }</textarea>
			 </td>
		    </tr>
		    <tr align="right">
		     <td colspan=2 >
			  <button class="btn btn-primary" id="update_submit_button">수정 완료</button>
			  <input type="hidden" name="cmd" value="Update_Submit"/>
			  <input type="hidden" name="board_num" value="${board.board_num}" /> 
			  <input type="hidden" name="board_password" value="${board.board_password }" />
		      <button class="btn btn-warning" onClick="history.back()">뒤로</button>
			 </td>
		    </tr> 
		   </table>
		</form> 
	</div>
	</div>
</body>
</html>
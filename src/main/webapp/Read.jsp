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
<script>
	$(
		function(){
			$("#list_button_td").click(
				function(){
					$("#cmd_value").val("list");
					$("#front_form").submit();
				}		
			);
			
			$("#update_button_td").click(
					function(){
						$("#cmd_value").val("Update");
						$("#front_form").submit();
					}		
				);
			
			$("#delete_button_td").click(
					function(){
						$("#cmd_value").val("Delete");
						$("#front_form").submit();
					}		
				);
			$("#reply_button_td").click(
					function(){
						$("#cmd_value").val("Reply");
						$("#front_form").submit();
					}		
				);
		}		
	);
</script>
<body>
<div class="panel panel-default panel-table" style="width:80%; " align="center">
	<div class="panel-head">
		<table class="table table-list" >
		 <tr>
		  <td bgcolor=9CA2EE height=25 align=center class=m>게시판</td>
		 </tr>
	</div>
	<div class="panel-body">
		 <tr>
		  <td colspan=4>
		   <table class="table"> 
		    <tr> 
			 <td align=center bgcolor=#dddddd width=10%> 이 름 </td>
			 <td bgcolor=#ffffe8>${param.member_name }</td>
			 <td align=center bgcolor=#dddddd width=15%> 등록날짜 </td>
			 <td bgcolor=#ffffe8>${board.board_date}</td>
			</tr>
		    <tr> 
		     <td align=center bgcolor=#dddddd> 제 목</td>
		     <td bgcolor=#ffffe8 colspan=3>${board.board_content}</td>
		   </tr>
		   </table>
		  </td>
		 </tr>
			 <tr style="float:right" >
				 <form method="post" action="front" id="front_form">
					<td><button type="submit" class="btn btn-primary" id="list_button_td">목록</button></td>
					<td><button type="submit" class="btn btn-primary" id="update_button_td">수정</button></td>
					<td><button type="submit" class="btn btn-primary" id="reply_button_td">답변 달기</button></td>
					<td><button type="submit" class="btn btn-danger" id="delete_button_td">삭제</button></td>
			 	</form>	 
			 </tr>
			 <input type="hidden" id="cmd_value" name="cmd" value=""/>
			 <input type="hidden" id="board_num" value="${board.board_num}"/>
			 <input type="hidden" id="board_password" value="${board.board_password }"/>
		</table>
	</div>
</div>
</body>
</html>

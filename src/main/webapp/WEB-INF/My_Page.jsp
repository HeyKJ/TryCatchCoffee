<!-- 
/*
 *  Description :  마이 페이지
 *  Created : 2016-06-29
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
				
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
		$("#Show-Detail-Purchase-List").hide();
		$(".div-fade").fadeIn(400);
		//Show-Change-Member-Password-Panel-Body-Btn Click Show Change-Member-Password-Panel-Body
		$("#Show-Change-Member-Password-Panel-Body-Btn").click(function(){
			if($("#Change-Member-Password-Panel-Body").css("display") == "none"){
				$(this).html("<em class='fa fa-minus-circle' aria-hidden='true'></em>");
				$("#Change-Member-Password-Panel-Body").slideDown(400);
			}
			else{
				$(this).html("<em class='fa fa-plus-circle' aria-hidden='true'></em>");
				$("#Change-Member-Password-Panel-Body").slideUp(400);
			}
		});
		//Show-Detail-Purchase-List-Btn Click Show Modal
		$(".Show-Detail-Purchase-List-Btn").click(function(){
			 $("#Show-Detail-Purchase-List").show();
		});
		//Show-Detail-Purchase-List-Modal-Hide-Btn Click Hide Modal
		$("#Show-Detail-Purchase-List-Modal-Hide-Btn").click(function(){
		    $("#Show-Detail-Purchase-List").hide();
		  });
	})
</script>

<style>
#Store-Search-Main-Div {
	display: none;
}

#My-Page-Member-Inf-Form :read-only{
	background-color: white;
	border: none;
}
</style>

<!-- Header -->
<jsp:include page="layout/Header.jsp" />
<div class="row">
	<div class="col-lg-4" style="display: inline-block;">
		<!-- Member Information -->
		<div class="panel panel-default panel-table">
			<div class="panel-heading" style="background-color:#18bc9c">
				<div class="row">
					<div class="col col-xs-6">
						<h3 class="panel-title">회원 정보</h3>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<!-- Member Info Panel -->
				<div class="row col-md-offset-1">
					<form id="My-Page-Member-Inf-Form" class="form-horizontal">
						<!-- Email -->
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" readonly="readonly" value="test@test.com">
							</div>
						</div>
						<!-- Name -->
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" readonly="readonly" value="테스트">
							</div>
						</div>
						<!-- Tel -->
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Tel</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" readonly="readonly" value="01012341234">
							</div>
						</div>
						<!-- Mileage -->
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Mileage</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" readonly="readonly" value="100">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Chage Member Password -->
		<div class="panel panel-default panel-table">
			<div class="panel-heading">
				<div class="row">
					<div class="col col-xs-6">
						<div class="panel-title" style="display:inline-block; margin-right: 10px">비밀번호 변경</div> 
							<div style="display:inline-block;">
								<a id="Show-Change-Member-Password-Panel-Body-Btn" class="btn btn-success"><em class="fa fa-plus-circle" aria-hidden="true"></em></a>
							</div>
						</div>
					</div>
				</div>
				<div id="Change-Member-Password-Panel-Body" class="panel-body" style="display:none">
					<div class="row">
						
					</div>
				</div>
	 		</div>
	</div>
	<!-- Purchase History -->
	<div class="col-lg-8" style="display: inline-block;">
		<div class="panel panel-default panel-table">
			<div class="panel-heading" style="background-color:#18bc9c">
				<div class="row">
					<div class="col col-xs-6">
						<h3 class="panel-title">상품 구매 내역</h3>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<table
						class="table table-striped table-bordered table-list">
						<!-- Member-Purchase-Table-Header -->
						<thead>
							<tr>
								<th>구매 날짜</th>
								<th>구매자</th>
								<th>구매 상품</th>
								<th>결제 방법</th>
								<th>결제액</th>
								<th>구매 매장</th>
							</tr>
						</thead>
						<!-- Member-Purchase-Table-Body -->
						<tbody>
							<tr>
								<td>2016년 6월 30일 14시 30분</td>
								<td>고객1</td>
								<td><a class="Show-Detail-Purchase-List-Btn" style="cursor:pointer;">상품 보기</a></td>
								<td>신용 카드</td>
								<td>10,000원</td>
								<td>종각점</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer pull-right">
			<a class="btn btn-success"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
				<a class="btn btn-success"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
			</div>
		</div>
	</div>
	<!-- MeetingRoom History -->
	<div class="col-lg-8" style="display: inline-block;">
		<div class="panel panel-default panel-table">
			<div class="panel-heading" style="background-color:#18bc9c">
				<div class="row">
					<div class="col col-xs-6">
						<h3 class="panel-title">미팅룸 예약 내역</h3>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<table
						class="table table-striped table-bordered table-list">
						<!-- Member-Purchase-Meeting-Table-Header -->
						<thead>
							<tr>
								<th>구매 날짜</th>
								<th>예약 날짜</th>
								<th>구매자</th>
								<th>매장명</th>
								<th>미팅룸 번호</th>
								<th>시간</th>
							</tr>
						</thead>
						<!-- Member-Purchase-Meeting-Table-Body -->
						<tbody>
							<tr>
								<td>2016년 6월 30일 14시 30분</td>
								<td>2016년 7월 3일</td>
								<td>고객1</td>
								<td>종각점</td>
								<td>1번</td>
								<td>10:00 ~ 12:00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer pull-right">
			<a class="btn btn-success"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
				<a class="btn btn-success"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
			</div>
		</div>
	</div>
</div>
<!-- Meber_Purchase_List_Modal -->
<jsp:include page="Member_Purchase_List_Modal.jsp" />
<!-- Footer -->
<jsp:include page="layout/Footer.jsp" />
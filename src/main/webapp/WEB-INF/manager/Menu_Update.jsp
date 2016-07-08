<!-- 
/*
 *  Description :  메뉴 수정 페이지
 *  Created : 2016-06-29
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="bootstrab/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery -->
<script src="bootstrab/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrab/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://www.prepbootstrap.com/Content/shieldui-lite/dist/css/light/all.min.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<script>
	$(function(){
		//Menu-Imange-Update-Icon Click Show File Search Modal
		$("#Menu-Imange-Update-Icon").click(function(){
			$("#Menu-Imange-Update-Btn").trigger('click');
		});
		//New-Menu-Catogory Value == 카테고리 추가, Create Text
		$("#New-Menu-Catogory").change(function(){
			if($(this).val() == "카테고리 추가"){
				$("#Create-New-Menu-Category-Div").slideDown(400);
			}
			else{
				$("#Create-New-Menu-Category-Div").slideUp(400);
			}
		});
	})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-6" style="display: inline-block;">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">이미지</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row col-md-offset-4"></div>
						<!-- Menu-Image -->
						<img width="100%" alt="" src="abc.jpg">
						<div>
							<div class="input group row" style="margin-left: 0px !important">
								<hr />
								<span id="Result-Search-Owner">이미지 업로드</span> 
								<!-- Change-Image-Icon -->
								<a
									id="Menu-Imange-Update-Icon"
									class="btn btn-success btn-sm"><em
									class="fa fa-plus-circle" aria-hidden="true"></em></a><br />
									<!-- Hidden Image File Upload Btn -->
									<div style="display:none;">
										<input type="file" id="Menu-Imange-Update-Btn" />
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6" style="display: inline-block;">
				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">메뉴 정보</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row col-md-offset-2">
							<form class="form-horizontal">
								<!-- Menu Num -->
								<div class="form-group">
									<label for="Menu-Num" class="col-sm-2 control-label">Num</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="Menu-Num"
											placeholder="메뉴 번호">
									</div>
								</div>
								<!-- Menu Name -->
								<div class="form-group">
									<label for="Menu-Name" class="col-sm-2 control-label">Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="Menu-Name"
											placeholder="메뉴 이름">
									</div>
								</div>
								<!-- Menu Price -->
								<div class="form-group">
									<label for="Menu-Price" class="col-sm-2 control-label">Price</label>
									<div class="col-sm-6">
										<input type="password" class="form-control"
											id="Menu-Price" placeholder="가격">
									</div>
								</div>
								<!-- Menu Category -->
								<div class="form-group">
									<label for="Menu-Catogory" class="col-sm-2 control-label">Category</label>
									<div class="col-sm-6">
										<select id="Menu-Catogory" style="width:210px; height:45px">
											<option>카테고리</option>
											<option>커피</option>
											<option>음료</option>
											<option>케이크</option>
											<option>카테고리 추가</option>
										</select>
									</div>
								</div>
								<!-- Create New Category -->
								<div id="Create-New-Menu-Category-Div" class="form-group" style="display: none">
									<label for="Create-New-Menu-Category" class="col-sm-2 control-label">Add</label>
									<div class="col-sm-6">
										<input type="password" class="form-control"
											id="Create-New-Menu-Category" placeholder="카테고리 추가">
									</div>
								</div>
								<!-- Submit Btn -->
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button id="User-Log-In-Btn" type="button"
											class="btn btn-default">메뉴 수정</button>
										&nbsp;&nbsp;
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
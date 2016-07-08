<!-- 
/*
 *  Description :  메뉴 관리 페이지
 *  Created : 2016-06-29
 *  Author : 김준혁
 *  
 *  Revisions :
 */
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<script>
	var count = 0;
	$(function() {
		//전체 선택 MouseEnter
		$("#Menu-Table-Check-All-th")
				.mouseenter(
						function() {
							$(this)
									.html(
											"<a id='Menu-Table-Check-All-Btn' class='btn btn-success'><em class='fa fa-check-circle'></em></a>");
							//All-Check Click Make Icon
							$("#Menu-Table-Check-All-Btn")
									.click(
											function() {
												if (count == 0) {
													$(
															"#Menu-Table #Menu-Select-Single-Check-Div")
															.hide();
													$(
															"#Menu-Table #Menu-Show-Check-Icon-Div")
															.show();
													count++;
												} else {
													$(
															"#Menu-Table #Menu-Select-Single-Check-Div")
															.show();
													$(
															"#Menu-Table #Menu-Show-Check-Icon-Div")
															.hide();
													count = 0;
												}
											});
						});
		//전체 선택 MouseLeave
		$("#Menu-Table-Check-All-th").mouseleave(function() {
			$(this).html("전체 선택");
		});
		//Menu-Table-Show-Icon-Btn Click Make Icon
		$("#Menu-Table #Menu-Table-Show-Icon-Btn").click(function() {
			var div = $(this).parent();
			div.hide();
			$(div).siblings("#Menu-Show-Check-Icon-Div").show();
		});
		//Check-Btn Click Remove Icon
		$("#Menu-Table #Menu-Table-Check-Btn").click(function() {
			var div = $(this).parent();
			div.hide();
			$(div).siblings("#Menu-Select-Single-Check-Div").show();
		});
		//Menu-Table-Delete-Btn Click Delete Member
		$("#Menu-Table-Delete-Btn").click(
				function() {
					var delete_count = 0;
					$("#Menu-Table #Menu-Show-Check-Icon-Div").each(
							function() {
								//Find Check-Icon
								if ($(this).css("display") == "block") {
									var menu_num = $(this).parent().siblings(
											"#Menu-Table-Num-td").text();
									delete_count++;

								}
							});
					if (delete_count != 0) {
						if (confirm("체크 된 항목들을 정말 삭제하시겠습니까?")) {

						}
					} else {
						alert("선택된 항목이 없습니다.");
					}
				});
		//Menu-Insert-Btn Click Call POPup Window
		$("#Menu-Insert-Btn").click(
				function() {
					var wX = 1172;
					var wY = 800;
					var url = 'front?cmd=manager&check=menu_insert';
					var popOption = 'width=' + wX + ', height=' + wY
							+ ', resizable=no, scrollbars=no, status=no;';
					window.open(url, '', popOption);
				});
		//Menu-Table-Update-Btn Click Call POPup Window
		$("#Menu-Table-Update-Btn").click(function(){
				var update_count = 0;
				$("#Menu-Table #Menu-Show-Check-Icon-Div").each(
						function() {
							//Find Check-Icon
							if ($(this).css("display") == "block") {
								var menu_num = $(this).parent().siblings(
										"#Menu-Table-Num-td").text();
								update_count++;
							}
						});
					if(update_count == 0){
						alert("선택 된 항목이 없습니다.");
						return false;
					}
					else if(update_count == 1){
						var wX = 1172;
						var wY = 800;
						var url = 'front?cmd=manager&check=menu_update';
						var popOption = 'width=' + wX + ', height=' + wY
								+ ', resizable=no, scrollbars=no, status=no;';
						window.open(url, '', popOption);
					}
					else if(update_count > 1){
						alert("하나의 메뉴만 수정 할 수 있습니다.");
						return false;
					}
		});
	});
</script>
<style>
#Menu-Table #Menu-Table-Check-All-th {
	width: 100px;
}
</style>

<div class="container" style="margin-top: 100px">
	<div class="row">
		<div class="col-md-12 col-md-offset-1">
			<div class="panel panel-default panel-table">
				<div class="panel-heading">
					<div class="row">
						<div class="col col-xs-6">
							<h3 class="panel-title">메뉴 관리</h3>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<!-- Menu Insert Head-->
						<p>
							<strong>새로운 메뉴를 추가하세요</strong>&nbsp;&nbsp;<a
								id="Menu-Insert-Btn" class="btn btn-danger btn-sm"><em
								class="fa fa-plus-circle" aria-hidden="true"></em></a>
						</p>
					
					<table id="Menu-Table"
						class="table table-striped table-bordered table-list">
						<thead>
							<tr>
								<th class="text-center" id="Menu-Table-Check-All-th">전체 선택</th>
								<th width="90px">메뉴 번호</th>
								<th>메뉴명</th>
								<th>가격</th>
								<th>카테고리</th>
								<th class="text-center"><a id="Menu-Table-Update-Btn"
									class="btn btn-default"><em class="fa fa-pencil"></em></a> <a
									id="Menu-Table-Delete-Btn" class="btn btn-danger"><em
										class="fa fa-trash"></em></a></th>
							</tr>
						</thead>
						<tbody class="table-hover">
							<tr>
								<td id="Menu-Table-Check-td" " class="text-center">
									<!-- 선택 div -->
									<div id="Menu-Select-Single-Check-Div">
										<a id="Menu-Table-Show-Icon-Btn" href="#"
											style="text-decoration: none">선택</a>
									</div> <!-- Check-Icon div -->
									<div id="Menu-Show-Check-Icon-Div" style="display: none">
										<a id='Menu-Table-Check-Btn' class='btn btn-success'><em
											class='fa fa-check-circle'></em></a>
									</div>
								</td>
								<td style="text-align: left;" id="Menu-Table-Num-td">1</td>
								<td style="text-align: left;">아메리카노</td>
								<td style="text-align: left;">1000</td>
								<td style="text-align: left">커피</td>
								<td align="center"></td>
							</tr>
							<tr>
								<td id="Menu-Table-Check-td" " class="text-center">
									<!-- 선택 div -->
									<div id="Menu-Select-Single-Check-Div">
										<a id="Menu-Table-Show-Icon-Btn" href="#"
											style="text-decoration: none">선택</a>
									</div> <!-- Check-Icon div -->
									<div id="Menu-Show-Check-Icon-Div" style="display: none">
										<a id='Menu-Table-Check-Btn' class='btn btn-success'><em
											class='fa fa-check-circle'></em></a>
									</div>
								</td>
								<td style="text-align: left;" id="Menu-Table-Num-td">2</td>
								<td style="text-align: left;">아메리카노</td>
								<td style="text-align: left;">1000</td>
								<td style="text-align: left">커피</td>
								<td align="center"></td>
							</tr>
						</tbody>
					</table>
					<!-- Pagination -->
					<div class="col-sm-offset-5">
						<nav>
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

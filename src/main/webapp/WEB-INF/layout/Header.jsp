<%@ page contentType="text/html; charset=UTF-8" %>

<script>
	$(function() {
		//Main-Brand-Btn Click
		$("#Main-Brand-Btn").click(function() {
			location.href="front?cmd=main";
		});
		//DropDown-Menu Mouseenter
		$("#Main-DropDown-Nav #Main-DropDown").mouseenter(function() {
			$("#Main-DropDown-Menu").slideDown(400);
		});
		//DropDown-Menu Mouseleave
		$("#Main-DropDown-Menu").mouseleave(function() {
			$("#Main-DropDown-Menu").slideUp(400);
		});
		//MeetingRoom-Btn Click Load Meeting_Room.jsp
		$("#MeetingRoom-Btn").click(function(){
			var wX = screen.availWidth;
 			var wY = screen.availHeight;wY = (wY-38);
 			var url = 'front?cmd=meeting_room_popup';
 			var popOption = 'width=' + wX + ', height='+ wY + ', resizable=no, scrollbars=no, status=no;';
 			window.open(url,'',popOption);
		});
	});
</script>

<style>
.dropdown a {
	text-decoration: none;
}

.nav li>.dropdown a {
	margin-top: 20px;
	margin-right: 10px
}

#Main-DropDown-Menu a {
	color: white;
	text-decoration: none;
}

#Main-DropDown-Menu a:hover {
	color: #2C3E52;
}

h2 {
	color: black;
}

</style>

<!-- Search-Store Field -->
	<div id="Store-Search-Main-Div" class="col-lg-2"
		style="background-color:black; opacity: 0.5; height: 100%; position: fixed; margin-top:60px">
		<form class="form-horizontal">
			<div class="form-group">
					<input type="email" class="form-control" id="inputEmail3" placeholder="매장 검색">
			</div>
		</form>
		<!-- Result Search Store -->
		<div></div>
	</div>
	
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span>

		</button>
		<button id="Main-Brand-Btn" class="navbar-brand">Brand</button> <span
			class="icon-bar"></span>
	</div>


	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<a id="Main-Brand-Btn" class="navbar-brand" href="front?cmd=main">Try
				Coffee Catch{}</a>
			<ul class="nav navbar-nav" style="margin-left: 8%">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a id="Log-In-Btn" href="front?cmd=log_in">Log-In</a>
				</li>
				<li class="page-scroll"><a id="Register-Btn" href="front?cmd=register">Register</a>
				</li>
				<li class="page-scroll"><a href="front?cmd=my_page">My Page</a></li>
				<!-- Our Store DropDown -->
				<li><a href="#" id="OurStore-Btn">Our Store</a></li>
			</ul>
			<br />
			<ul id="Main-DropDown-Nav" class="nav navbar-nav">
				<li class="hidden"><a href="#page-top"></a></li>
				<!-- TryCoffee DropDown -->
				<li><a href="#`" id="Main-DropDown">Try Coffee</a></li>
				<!-- Order DropDown -->
				<li><a href="#" id="Main-DropDown">Order</a></li>
				<!-- Community DropDown -->
				<li><a href="#" id="Main-DropDown">Community</a></li>
				<li><a href="#" id="Main-DropDown">Manager</a></li>
			</ul>
			<br />
			<!-- Main-DropDown-Menu -->
			<ul class="nav navbar-nav col-sm-offset-5" style="width: 100%;">
				<div id="Main-DropDown-Menu" style="border-top: 1px solid white; height: 150px; display: none; padding-top: 40px">
					<!-- TryCoffee Menu -->
					<div style="display: inline-block; margin-left: 30px;">
						<a role="menuitem" tabindex="-1" href="front?cmd=trycoffee&check=company">회사소개</a><br /> 
						<a role="menuitem" tabindex="-1" href="front?cmd=trycoffee&check=ceo">CEO 인사말</a><br /> 
					</div>
					<!-- Order Menu -->
					<div style="display: inline-block; margin-left: 30px;">
						<a role="menuitem" tabindex="-1" href="front?cmd=order&check=drink">음료 주문 예약</a><br />
						<a id="MeetingRoom-Btn" role="menuitem" tabindex="-1" href="#">미팅룸 예약</a><br />
					</div>
					<!-- Community Menu -->
					<div style="display: inline-block; margin-left: 30px;">
						<a role="menuitem" tabindex="-1" href="#">Recipe Contest</a><br />
						<a role="menuitem" tabindex="-1" href="#">고객의 소리</a><br />
					</div>
					<!-- Manager Menu -->
					<div style="display: inline-block; margin-left: 30px;">
						<a role="menuitem" tabindex="-1" href="front?cmd=manager&check=member">회원 관리</a><br /> <a
							role="menuitem" tabindex="-1" href="front?cmd=manager&check=store">매장 관리</a><br /> <a
							role="menuitem" tabindex="-1" href="#">게시판 관리</a><br /> <a
							role="menuitem" tabindex="-1" href="front?cmd=manager&check=menu">메뉴 관리</a><br />
					</div>
				</div>
			</ul>
		</nav>
	</div>

<%@page import="com.spring.project.member.dao.MemberDao"%>
<%@page import="com.spring.project.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from educhamp.themetrades.com/demo/admin/user-profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="EduChamp : Education HTML Template" />
	
	<!-- OG -->
	<meta property="og:title" content="EduChamp : Education HTML Template" />
	<meta property="og:description" content="EduChamp : Education HTML Template" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="index.do" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="${contextPath }/resources/admin/assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduChamp : Education HTML Template </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/vendors/calendar/fullcalendar.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/dashboard.css">
	<link class="skin" rel="stylesheet" type="text/css" href="${contextPath }/resources/admin/assets/css/color/color-1.css">
	
</head>
<!-- <body class="ttr-opened-sidebar ttr-pinned-sidebar"> -->
	
	<!-- header start -->
	<header class="ttr-header">
		<div class="ttr-header-wrapper">
			<!--sidebar menu toggler start -->
			<!-- <div class="ttr-toggle-sidebar ttr-material-button">
				<i class="ti-close ttr-open-icon"></i>
				<i class="ti-menu ttr-close-icon"></i>
			</div> -->
			<!--sidebar menu toggler end -->
			<!--logo start -->
			<div class="ttr-logo-box">
				<div>
					<a href="index.do" class="ttr-logo">
						<img alt="" class="ttr-logo-mobile" src="${contextPath }/resources/admin/assets/images/logo-mobile.png" width="30" height="30">
						<img alt="" class="ttr-logo-desktop" src="${contextPath }/resources/admin/assets/images/logo-white.png" width="160" height="27">
					</a>
				</div>
			</div>
			<!--logo end -->
			<!-- <div class="ttr-header-menu"> -->
				<!-- header left menu start -->
				<!-- <ul class="ttr-header-navigation"> -->
					<!-- <li>
						<a href="main/index.do" class="ttr-material-button ttr-submenu-toggle">HOME</a>
					</li> -->
					<!-- <li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle">QUICK MENU <i class="fa fa-angle-down"></i></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a href="../main/courses.jsp">Our Courses</a></li>
								<li><a href="../main/event.jsp">New Event</a></li>
								<li><a href="../main/membership.jsp">Membership</a></li>
							</ul>
						</div>
					</li>
				</ul>
				header left menu end
			</div>
			<div class="ttr-header-right ttr-with-seperator">
				header right menu start
				<ul class="ttr-header-navigation">
					<li>
						<a href="#" class="ttr-material-button ttr-search-toggle"><i class="fa fa-search"></i></a>
					</li>
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"><i class="fa fa-bell"></i></a>
						<div class="ttr-header-submenu noti-menu">
							<div class="ttr-notify-header">
								<span class="ttr-notify-text-top">9 New</span>
								<span class="ttr-notify-text">User Notifications</span>
							</div>
							<div class="noti-box-list">
								<ul>
									<li>
										<span class="notification-icon dashbg-gray">
											<i class="fa fa-check"></i>
										</span>
										<span class="notification-text">
											<span>Sneha Jogi</span> sent you a message.
										</span>
										<span class="notification-time">
											<a href="#" class="fa fa-close"></a>
											<span> 02:14</span>
										</span>
									</li>
									<li>
										<span class="notification-icon dashbg-yellow">
											<i class="fa fa-shopping-cart"></i>
										</span>
										<span class="notification-text">
											<a href="#">Your order is placed</a> sent you a message.
										</span>
										<span class="notification-time">
											<a href="#" class="fa fa-close"></a>
											<span> 7 Min</span>
										</span>
									</li>
									<li>
										<span class="notification-icon dashbg-red">
											<i class="fa fa-bullhorn"></i>
										</span>
										<span class="notification-text">
											<span>Your item is shipped</span> sent you a message.
										</span>
										<span class="notification-time">
											<a href="#" class="fa fa-close"></a>
											<span> 2 May</span>
										</span>
									</li>
									<li>
										<span class="notification-icon dashbg-green">
											<i class="fa fa-comments-o"></i>
										</span>
										<span class="notification-text">
											<a href="#">Sneha Jogi</a> sent you a message.
										</span>
										<span class="notification-time">
											<a href="#" class="fa fa-close"></a>
											<span> 14 July</span>
										</span>
									</li>
									<li>
										<span class="notification-icon dashbg-primary">
											<i class="fa fa-file-word-o"></i>
										</span>
										<span class="notification-text">
											<span>Sneha Jogi</span> sent you a message.
										</span>
										<span class="notification-time">
											<a href="#" class="fa fa-close"></a>
											<span> 15 Min</span>
										</span>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li> -->
						<%-- <a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="${contextPath }/resources/admin/assets/images/testimonials/pic3.jpg" width="32" height="32"></span></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a href="user-profile.jsp">My profile</a></li>
								<li><a href="list-view-calendar.jsp">Activity</a></li>
								<li><a href="mailbox.jsp">Messages</a></li>
								<li><a href="../main/login.jsp">Logout</a></li>
							</ul>
						</div>
					</li>
					<li class="ttr-hide-on-mobile">
						<a href="#" class="ttr-material-button"><i class="ti-layout-grid3-alt"></i></a>
						<div class="ttr-header-submenu ttr-extra-menu">
							<a href="#">
								<i class="fa fa-music"></i>
								<span>Musics</span>
							</a>
							<a href="#">
								<i class="fa fa-youtube-play"></i>
								<span>Videos</span>
							</a>
							<a href="#">
								<i class="fa fa-envelope"></i>
								<span>Emails</span>
							</a>
							<a href="#">
								<i class="fa fa-book"></i>
								<span>Reports</span>
							</a>
							<a href="#">
								<i class="fa fa-smile-o"></i>
								<span>Persons</span>
							</a>
							<a href="#">
								<i class="fa fa-picture-o"></i>
								<span>Pictures</span>
							</a>
						</div>
					</li>
				</ul> --%>
				<!-- header right menu end -->
			<!-- </div> -->
			<!--header search panel start -->
			<div class="ttr-search-bar">
				<form class="ttr-search-form">
					<div class="ttr-search-input-wrapper">
						<input type="text" name="qq" placeholder="search something..." class="ttr-search-input">
						<button type="submit" name="search" class="ttr-search-submit"><i class="ti-arrow-right"></i></button>
					</div>
					<span class="ttr-search-close ttr-search-toggle">
						<i class="ti-close"></i>
					</span>
				</form>
			</div>
			<!--header search panel end -->
		</div>
	</header>
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<div class="ttr-sidebar">
		<div class="ttr-sidebar-wrapper content-scroll">
			<!-- side menu logo start -->
			<div class="ttr-sidebar-logo">
				<a href="#"><img alt="" src="${contextPath }/resources/admin/assets/images/logo.png" width="122" height="27"></a>
				<!-- <div class="ttr-sidebar-pin-button" title="Pin/Unpin Menu">
					<i class="material-icons ttr-fixed-icon">gps_fixed</i>
					<i class="material-icons ttr-not-fixed-icon">gps_not_fixed</i>
				</div> -->
				<div class="ttr-sidebar-toggle-button">
					<i class="ti-arrow-left"></i>
				</div>
			</div>
			<!-- side menu logo end -->
			<!-- sidebar menu start -->
			<!-- <nav class="ttr-sidebar-navi">
				<ul>
					<li>
						<a href="index.jsp" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-home"></i></span>
		                	<span class="ttr-label">Dashborad</span>
		                </a>
		            </li>
					<li>
						<a href="courses.jsp" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-book"></i></span>
		                	<span class="ttr-label">Courses</span>
		                </a>
		            </li>
					<li>
						<a href="#" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-email"></i></span>
		                	<span class="ttr-label">Mailbox</span>
		                	<span class="ttr-arrow-icon"><i class="fa fa-angle-down"></i></span>
		                </a>
		                <ul>
		                	<li>
		                		<a href="mailbox.jsp" class="ttr-material-button"><span class="ttr-label">Mail Box</span></a>
		                	</li>
		                	<li>
		                		<a href="mailbox-compose.jsp" class="ttr-material-button"><span class="ttr-label">Compose</span></a>
		                	</li>
							<li>
		                		<a href="mailbox-read.jsp" class="ttr-material-button"><span class="ttr-label">Mail Read</span></a>
		                	</li>
		                </ul>
		            </li>
					<li>
						<a href="#" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-calendar"></i></span>
		                	<span class="ttr-label">Calendar</span>
		                	<span class="ttr-arrow-icon"><i class="fa fa-angle-down"></i></span>
		                </a>
		                <ul>
		                	<li>
		                		<a href="basic-calendar.jsp" class="ttr-material-button"><span class="ttr-label">Basic Calendar</span></a>
		                	</li>
		                	<li>
		                		<a href="list-view-calendar.jsp" class="ttr-material-button"><span class="ttr-label">List View</span></a>
		                	</li>
		                </ul>
		            </li>
					<li>
						<a href="bookmark.jsp" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-bookmark-alt"></i></span>
		                	<span class="ttr-label">Bookmarks</span>
		                </a>
		            </li>
					<li>
						<a href="review.jsp" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-comments"></i></span>
		                	<span class="ttr-label">Review</span>
		                </a>
		            </li>
					<li>
						<a href="add-listing.jsp" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-layout-accordion-list"></i></span>
		                	<span class="ttr-label">Add listing</span>
		                </a>
		            </li>
					<li>
						<a href="#" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-user"></i></span>
		                	<span class="ttr-label">My Profile</span>
		                	<span class="ttr-arrow-icon"><i class="fa fa-angle-down"></i></span>
		                </a>
		                <ul>
		                	<li>
		                		<a href="user-profile.jsp" class="ttr-material-button"><span class="ttr-label">User Profile</span></a>
		                	</li>
		                	<li>
		                		<a href="teacher-profile.jsp" class="ttr-material-button"><span class="ttr-label">Teacher Profile</span></a>
		                	</li>
		                </ul>
		            </li>
		            <li class="ttr-seperate"></li>
				</ul>
				sidebar menu end
			</nav> -->
			<!-- sidebar menu end -->
		</div>
	</div>
	<!-- Left sidebar menu end -->

	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">My Page</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>User Profile</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>마이 페이지</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3>My Page</h3>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">ID</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.id}" disabled>
										</div> 
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Name</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.name}"disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Email</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" value="${member.email}"disabled>
											<!-- <span class="help">If you want your invoices addressed to a company. Leave blank to use your full name.</span> -->
										</div>
									</div>
								</div>
							</form>
							<form class="edit-profile" action="updatePw.do" method="post">
								<div class="">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Current Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="CuPw" value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">New Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="NwPw" value="" disabled>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Re-check Password</label>
										<div class="col-sm-7">
											<input class="form-control" type="password" name="NwPwOk" value="" disabled>
											<div id="checkmsgpw"></div>	
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-2">
									</div>
									<div class="col-sm-7">
										<button type="button" onclick="buttonClick()" id="Home" class="btn-secondry">Home</button>
										<button type="button" onclick="buttonClick()" id="deleteMember" class="btn" >회원탈퇴</button>
										<button type="submit" onclick="buttonClick()" id="savePw" class="btn" >비밀번호 저장</button>
									</div>
								</div>
									
							</form>
						</div>
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
			</div>
		</div>
	</main>
	<div class="ttr-overlay"></div>

<!-- External JavaScripts -->
<script src="${contextPath }/resources/admin/assets/js/jquery.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/counter/waypoints-min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/counter/counterup.min.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/masonry/masonry.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/masonry/filter.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/scroll/scrollbar.min.js"></script>
<script src="${contextPath }/resources/admin/assets/js/functions.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/chart/chart.min.js"></script>
<script src="${contextPath }/resources/admin/assets/js/admin.js"></script>
<script src="${contextPath }/resources/admin/assets/vendors/switcher/switcher.js"></script>
</body>

<script>
var pwRule = /^[a-zA-Z0-9]{2,12}$/;

$(document).ready(function(){
	pwCheck();
	nwpwCheck();
})

function buttonClick() {
	location.href="index.do"
}

function pwCheck(){
	$('input[name=CuPw]').blur(function(){
		var pw = '${member.pw}';
		var pwOk = $('input[name=CuPw]').val();
		if(pw!=pwOk){
			console.log("비번불일치")
		}
		else{
			console.log("비번일치")
			$('input[name=NwPw]').removeAttr('disabled');
			$('input[name=NwPwOk]').removeAttr('disabled');
		}
	})
}

function nwpwCheck(){
	$('input[name=NwPwOk]').blur(function(){
		var NwPw = $('input[name=NwPw]').val();
		var NwPwOk = $('input[name=NwPwOk]').val();
		var color;
		var msg;
		if(NwPw!=NwPwOk){
			console.log("비번일치노노")
			msg = '비밀번호가 일치하지 않습니다.';
			color='red';
		}
		else{
			console.log('비번일치')
			msg= '비밀번호를 사용할 수 있습니다'
			color='blue';
			$('#[deleteMember]').removeAttr('disabled');
			$('#[savePw]').removeAttr('disabled');
		}
		$('#checkmsgpw').text(msg);
		$('#checkmsgpw').css('color',color);
	})
}

</script>
</html>

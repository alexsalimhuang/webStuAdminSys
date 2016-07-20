<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>学员管理系统-首页</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="font-awesome-4.4.0/css/font-awesome.min.css">
<!--  Ionicons -->
<link rel="stylesheet" href="ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- bootstrap datatable -->	
<link rel="stylesheet" href="dist/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="dist/css/buttons.dataTables.min.css">
<link rel="stylesheet" href="dist/css/select.dataTables.min.css">
<link rel="stylesheet" href="dist/css/editor.dataTables.min.css">
<!-- 自定义的样式 -->
<link rel="stylesheet" href="css/mytable.css">
<link rel="stylesheet" href="css/index3.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>管理</b>系统</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>学员</b>管理系统</span>
			</a>

			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<img src="dist/img/user2-160x160.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
										<li><a href="#">
												<div class="pull-left">
													<img src="dist/img/user3-128x128.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													AdminLTE Design Team <small><i
														class="fa fa-clock-o"></i> 2 hours</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="dist/img/user4-128x128.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													Developers <small><i class="fa fa-clock-o"></i>
														Today</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="dist/img/user3-128x128.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													Sales Department <small><i class="fa fa-clock-o"></i>
														Yesterday</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img src="dist/img/user4-128x128.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													Reviewers <small><i class="fa fa-clock-o"></i> 2
														days</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><a href="#"> <i class="fa fa-users text-aqua"></i>
												5 new members joined today
										</a></li>
										<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
												Very long description here that may not fit into the page
												and may cause design problems
										</a></li>
										<li><a href="#"> <i class="fa fa-users text-red"></i>
												5 new members joined
										</a></li>
										<li><a href="#"> <i
												class="fa fa-shopping-cart text-green"></i> 25 sales made
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-red"></i>
												You changed your username
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul></li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Create a nice theme <small class="pull-right">40%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 40%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">40% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Some task I need to do <small class="pull-right">60%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-red"
														style="width: 60%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Make beautiful transitions <small class="pull-right">80%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-yellow"
														style="width: 80%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">80% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul></li>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs"> <c:if
										test="${not empty sessionScope.loginUser }">
					${sessionScope.loginUser.loginName }						
				  </c:if>
							</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">
									<p>

										<c:if test="${not empty sessionScope.loginUser }">
					${sessionScope.loginUser.loginName }						
				  </c:if>
										<small>Member since Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="col-xs-4 text-center">
										<a href="#">Followers</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Sales</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="#">Friends</a>
									</div>
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a id = "sign-out" href="javascript:;" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>
							<c:if test="${not empty sessionScope.loginUser }">
					${sessionScope.loginUser.loginName }						
				  </c:if>

						</p>
						<a href="#">
						<c:if test="${not empty sessionScope.loginUser}">
						<i class="fa fa-circle text-success"></i>Online
						</c:if>
						<c:if test="${empty sessionScope.loginUser.status}">
						<i class="fa fa-circle-o text-gray"></i>Offline
						</c:if>
						</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<li class="active treeview"><a href="#"> <i
							class="fa fa-dashboard"></i> <span>文章</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="javascript:;"><i
									class="fa fa-circle-o"></i> 我的文章</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									@我的文章</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
							<span>权限管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Top Navigation</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Boxed</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Fixed</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Collapsed Sidebar</a></li>
						</ul></li>

					<li class="treeview"><a href="#"> <i
							class="fa fa-pie-chart"></i> <span>个人中心</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									ChartJS</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Morris</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Flot</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Inline charts</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
							<span>数据管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul id="data-access" class="treeview-menu">
							<li data-loc="queryAllTables"><a href="javascript:;"><i class="fa fa-circle-o"></i>
									所有数据</a></li>
							<li data-loc="chooseTable"><a href="javascript:;"><i class="fa fa-circle-o"></i>
									整表查询</a></li>
							<li data-loc="conditionalTable"><a href="javascript:;"><i class="fa fa-circle-o"></i>
									条件查询</a></li>

						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>资源管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									General Elements</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Advanced Elements</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Editors</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>请求管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Simple tables</a></li>
							<li><a href="javascript:;"><i class="fa fa-circle-o"></i>
									Data tables</a></li>
						</ul></li>
					<li><a href="javascript:;"> <i class="fa fa-calendar"></i>
							<span>日历</span> <small class="label pull-right bg-red">3</small>
					</a></li>
					<li><a href="javascript:;"> <i class="fa fa-envelope"></i>
							<span>邮箱</span> <small class="label pull-right bg-yellow">12</small>
					</a></li>

					<li><a href="javascript:;"><i class="fa fa-folder"></i> <span>我的相册</span></a></li>
					<li><a href="javascript:;"><i class="fa fa-book"></i> <span>朋友圈</span></a></li>
					<li class="header">LABELS</li>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div id="main-content" class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					我的文章 <small>articles</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">文章</a></li>
					<li class="active">我的文章</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="col-md-6">
					<!-- Box Comment -->
					<div class="box box-widget">
						<div class="box-header with-border">
							<div class="user-block">
								<img class="img-circle" src="dist/img/user1-128x128.jpg"
									alt="user image"> <span class="username"><a
									href="#">Jonathan Burke Jr.</a></span> <span class="description">Shared
									publicly - 7:30 PM Today</span>
							</div>
							<!-- /.user-block -->
							<div class="box-tools">
								<button class="btn btn-box-tool" data-toggle="tooltip"
									title="Mark as read">
									<i class="fa fa-circle-o"></i>
								</button>
								<button class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
								<button class="btn btn-box-tool" data-widget="remove">
									<i class="fa fa-times"></i>
								</button>
							</div>
							<!-- /.box-tools -->
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<!-- post text -->
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right at</p>
							<p>the coast of the Semantics, a large language ocean. A
								small river named Duden flows by their place and supplies it
								with the necessary regelialia. It is a paradisematic country, in
								which roasted parts of sentences fly into your mouth.</p>

							<!-- Attachment -->
							<div class="attachment-block clearfix">
								<img class="attachment-img" src="dist/img/photo1.png"
									alt="attachment image">
								<div class="attachment-pushed">
									<h4 class="attachment-heading">
										<a href="http://www.lipsum.com/">Lorem ipsum text
											generator</a>
									</h4>
									<div class="attachment-text">
										Description about the attachment can be placed here. Lorem
										Ipsum is simply dummy text of the printing and typesetting
										industry... <a href="#">more</a>
									</div>
									<!-- /.attachment-text -->
								</div>
								<!-- /.attachment-pushed -->
							</div>
							<!-- /.attachment-block -->

							<!-- Social sharing buttons -->
							<button class="btn btn-default btn-xs">
								<i class="fa fa-share"></i> Share
							</button>
							<button class="btn btn-default btn-xs">
								<i class="fa fa-thumbs-o-up"></i> Like
							</button>
							<span class="pull-right text-muted">45 likes - 2 comments</span>
						</div>
						<!-- /.box-body -->
						<div class="box-footer box-comments">
							<div class="box-comment">
								<!-- User image -->
								<img class="img-circle img-sm" src="dist/img/user3-128x128.jpg"
									alt="user image">
								<div class="comment-text">
									<span class="username"> Maria Gonzales <span
										class="text-muted pull-right">8:03 PM Today</span>
									</span>
									<!-- /.username -->
									It is a long established fact that a reader will be distracted
									by the readable content of a page when looking at its layout.
								</div>
								<!-- /.comment-text -->
							</div>
							<!-- /.box-comment -->
							<div class="box-comment">
								<!-- User image -->
								<img class="img-circle img-sm" src="dist/img/user5-128x128.jpg"
									alt="user image">
								<div class="comment-text">
									<span class="username"> Nora Havisham <span
										class="text-muted pull-right">8:03 PM Today</span>
									</span>
									<!-- /.username -->
									The point of using Lorem Ipsum is that it has a more-or-less
									normal distribution of letters, as opposed to using 'Content
									here, content here', making it look like readable English.
								</div>
								<!-- /.comment-text -->
							</div>
							<!-- /.box-comment -->
						</div>
						<!-- /.box-footer -->
						<div class="box-footer">
							<form action="#" method="post">
								<img class="img-responsive img-circle img-sm"
									src="dist/img/user4-128x128.jpg" alt="alt text">
								<!-- .img-push is used to add margin to elements next to floating images -->
								<div class="img-push">
									<input type="text" class="form-control input-sm"
										placeholder="Press enter to post comment">
								</div>
							</form>
						</div>
						<!-- /.box-footer -->
					</div>
					<!-- /.box -->
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.3.0
			</div>
			<strong>Copyright &copy; 2014-2015 <a
				href="http://almsaeedstudio.com">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-user bg-yellow"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Frodo Updated His
										Profile</h4>
									<p>New phone +1(800)555-1234</p>
								</div>
						</a></li>
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-envelope-o bg-light-blue"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Nora Joined Mailing
										List</h4>
									<p>nora@example.com</p>
								</div>
						</a></li>
						<li><a href="javascript::;"> <i
								class="menu-icon fa fa-file-code-o bg-green"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Cron Job 254
										Executed</h4>
									<p>Execution time 5 seconds</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span
										class="label label-danger pull-right">70%</span>
								</h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Update Resume <span class="label label-success pull-right">95%</span>
								</h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 95%"></div>
								</div>
						</a></li>
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Laravel Integration <span
										class="label label-warning pull-right">50%</span>
								</h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 50%"></div>
								</div>
						</a></li>
						<li><a href="javascript::;">
								<h4 class="control-sidebar-subheading">
									Back End Framework <span class="label label-primary pull-right">68%</span>
								</h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 68%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>
						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>
							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Allow mail
								redirect <input type="checkbox" class="pull-right" checked>
							</label>
							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Expose author
								name in posts <input type="checkbox" class="pull-right" checked>
							</label>
							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->

						<h3 class="control-sidebar-heading">Chat Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Show me as
								online <input type="checkbox" class="pull-right" checked>
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Turn off
								notifications <input type="checkbox" class="pull-right">
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Delete chat
								history <a href="javascript::;" class="text-red pull-right"><i
									class="fa fa-trash-o"></i></a>
							</label>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	
	<!-- Bootstrap 3.3.5 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<script src="plugins/morris/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="plugins/knob/jquery.knob.js"></script>
	<!-- daterangepicker -->

	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>

	<script src="dist/js/jquery.dataTables.min.js"></script>
	<script src="dist/js/dataTables.buttons.min.js"></script>
	<script src="dist/js/dataTables.select.min.js"></script>
	<script src="dist/js/dataTables.keyTable.min.js"></script>
	<script src="dist/js/dataTables.editor.min.js"></script>
	<script src="dist/js/index3.js"></script>
	




</body>
</html>
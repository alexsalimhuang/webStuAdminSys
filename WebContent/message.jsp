<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学员管理系统 - 提示信息</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/errortheme.css">
<link rel="stylesheet" href="css/reg.css" />
</head>

<body>
	<div class="row-fluid">
		<div class="http-error">
			<div class="http-error-message">
				<div class="error-caption">
					<p>Oops!</p>
				</div>
				<div class="error-message">
					<p>${sessionScope.error }
					<p>
					<p class="return-home">
						<a href="login.jsp">返回登录界面</a>
					</p>
					
					<p class="return-home">
						<span style="width:30px;display:inline-block;"></span><a id="reg" href="javascript:;">注册</a>
					</p>
				</div>
			</div>
		</div>
	</div>


	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">提示信息</h4>
				</div>
				<div class="modal-body">
					<p class="text-center">
						<span class="glyphicon glyphicon-remove-sign"
							style="color: red; font-size: 30px;"></span>登录失败!
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-danger"
						data-dismiss="modal">确定</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<div id="tipNotFound" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div id="tipBody" class="modal-content">

				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-danger"
						data-dismiss="modal">离开</button>

				</div>
				<div id="registernowButton"></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<div id="register" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-danger"
						data-dismiss="modal">离开</button>
				</div>
				<div id="div5">
					<input class="form-control" id="urName" type="text" maxlength="16"
						placeholder="账号" />
					<div  id="div5info" class="alert alert-danger alert-dismissable hidden">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h6></i> Alert!</h6>
                                                             该用户名已被使用
                  	</div>
				</div>
				<div id="div6">
					<input class="form-control" id="urEmail" type="text" maxlength="20"
						placeholder="xxx@alex.com" />
				</div>
				<div id="div7">
					<input class="form-control" id="urPass" type="password"
						maxlength="16" placeholder="密码" />
				</div>
				<div id="div8">
					<input class="form-control" id="retypePass" type="password"
						maxlength="16" placeholder="确认密码" />
				</div>

				<div id="registerButton" data-dismiss="modal"></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<div id="registerSucceed" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">提示信息</h4>
				</div>
				<div class="modal-body">
					<p class="text-center">
						<span class="glyphicon glyphicon-leaf"
							style="color: chartreuse; font-size: 50px;"></span>恭喜您!注册成功
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-danger"
						data-dismiss="modal">确定</button>
					<button id="backtologin" type="button" class="btn btn-primary">返回登录</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/reg.js"></script>
</body>
</html>
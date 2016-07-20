<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		整表查询 <small>query by tablename</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">数据管理</a></li>
		<li class="active">整表查询</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<!-- Default box -->
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title text-aqua">请输入要查找的表名</h3>
			<div class="box-tools pull-right">
				<button class="btn btn-box-tool" data-widget="collapse"
					data-toggle="tooltip" title="Collapse">
					<i class="fa fa-minus"></i>
				</button>
				<button class="btn btn-box-tool" data-widget="remove"
					data-toggle="tooltip" title="Remove">
					<i class="fa fa-times"></i>
				</button>
			</div>
		</div>



		<!-- form start -->
		<form class="form-horizontal">
			<div class="box-body">
				<div class="form-group">
					<label style="text-align:left;padding-left:30px;" for="tname" class="col-xs-1 control-label ">表名</label>
					<div class="col-xs-3">
						<input data-customed="input_tablename" type="text" class="form-control" id="tname"
							placeholder="tablename"/>
					</div>
				</div>
				<button id="btn_clearTable" type="button" class="btn btn-default">清空</button>
				<span style="width:30px;display:inline-block;"></span>
				<button data-customed="btn_queryTable" type="button" class="btn btn-info ">查询</button>

			</div>
			<div data-customed="tableview" class="box-footer">
			</div>
			<!-- /.box-footer -->
		</form>
	</div>
	<!-- /.box -->
</section>
<!-- /.content -->


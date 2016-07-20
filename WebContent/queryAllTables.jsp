<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		查询所有的表 <small>all tables</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">数据管理</a></li>
		<li class="active">所有数据</li>
	</ol>
</section>

<section class="content">
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">所有的表</h3>
			<div class="box-tools">
				<ul class="pagination pagination-sm no-margin pull-right">
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
		<!-- /.box-header -->
		<div class="box-body no-padding">
			<table id="alltable" class="table table-striped table-hover">
				<tr>
					<th style="width: 10px">#</th>
					<th>表名</th>
					<th>备注</th>
				</tr>
				<c:forEach items="${sessionScope.queryAllTables }" var="table"
					varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${table }</td>
						<td><span class="badge bg-red">55%</span></td>

					</tr>
				</c:forEach>


			</table>
		</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</section>


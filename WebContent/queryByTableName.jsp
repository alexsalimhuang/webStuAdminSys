<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  


<h3 class="box-title text-aqua">${requestScope.tableName}表中的数据</h3>

	<!-- 展示数据的表格 -->
	<table data-customed="designatedTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th></th>
                <th>学号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>email</th>
                <th width="18%">出生日期</th>
                <th>电话</th>
                <th>地址</th>
            </tr>
        </thead>
    </table>




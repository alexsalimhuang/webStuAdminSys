<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="direct-chat-msg col-md-5">
	<div class="direct-chat-info clearfix">
		<span class="direct-chat-name pull-left">Alexsalim</span> <span id="nowtime"
			class="direct-chat-timestamp pull-right"> </span>
	</div>
	<!-- /.direct-chat-info -->
	<img class="direct-chat-img" src="dist/img/user1-128x128.jpg"
		alt="message user image">
	<!-- /.direct-chat-img -->
	<div class="direct-chat-text" >对不起，您所查找的表不存在。
	请重新输入表名</div>
	<!-- /.direct-chat-text -->
	
</div>
<br/>


<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#nowtime").html(new Date().toLocaleString());
					
	});
	

</script>

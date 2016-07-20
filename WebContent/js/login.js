$(function(){
		
	$('#username').keydown(function(event){
		
		if(event.keyCode == 13 && $(this).val() !== ''){
			$('#password').focus();
		}
		
	});
	
	$('#password').keydown(function(event){
		
		if(event.keyCode == 13 && $(this).val() !== ''){
			//执行登陆,触发登陆按钮的点击事件
			$('#btn-login').trigger('click');
		}
		
		
	});
	
	//给注册按钮绑定事件
	
	$('#btn-login').click(function(){
		
		$.ajax({
			url: 'user',
			type: 'post',
			dataType:'text',
			data:{
				oper: 'login',
				loginName : $('#username').val(),
				loginPass : $('#password').val()
			},
			success: function(result){
				if( result == 'true' ){
					
					//登陆成功
					//等待跳转
					$('#waiting').fadeIn("fast",function(){
						var time = 10;
						function countdown(){										
							$('#waiting span').html(time);
							if(time>0)
								time--;
						}
						window.setInterval(countdown,1000);
						setTimeout(function(){
							//跳转
							window.location.href = 'user?oper=forward';
						},11000);
					});
					
					
				}else{					
					window.location.href='message.jsp';
				}
			},
			error: function(){
				alert('服务器错误，登录失败！请重新尝试一下!');
			}
						
		});					
	});
	
	
	
	
		
	
});

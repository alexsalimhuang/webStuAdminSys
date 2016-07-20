$(function(){
		
	$('#reg').click(function(){												
		$('#tipNotFound').modal({
		backdrop:true,
		keyboard:true
		});						
											
	});
	
 	
	// 不是会员，是否要注册
	$('#registernowButton').on({
		"click":function(){
			$('#tipNotFound').modal('hide'); 
			// 注册
			$('#register').modal({
				backdrop:true,
				keyboard:true
			});

		},"mouseover":function(){
			$('#registernowButton').css("background-image","url(img/registernowBtnHoverS.png)");
		},"mouseout":function(){
			$('#registernowButton').css("background-image","url()");
		},"mousedown":function(){
			$('#registernowButton').css("background-image","url(img/registernowBtnPressedS.png)");
		}
	});

	$('#registerButton').on({
		"click":function(){
			$('#register').modal('hide'); 
			// 注册
			$.ajax({
				url: 'user',
				type: 'post',
				data:{
					oper: 'reg',
					urName : $('#urName').val(),
					urEmail : $('#urEmail').val(),
					urPass : $('#urPass').val()
				},
				success: function(result){
					if( result == 'true' ){
						$('#registerSucceed').modal({
							backdrop:true,
							keyboard:true
						});
						
					}
				},
				error: function(){
					alert('服务器错误，注册失败！请重新尝试一下!');
				}
							
			});		
						
		},"mouseover":function(){
			$('#registerButton').css("background-image","url(img/registerBtnHoverS.png)");
		},"mouseout":function(){
			$('#registerButton').css("background-image","url()");
		},"mousedown":function(){
			$('#registerButton').css("background-image","url(img/registerBtnPressedS.png)");
		}
	});

	$('#urName').on('blur',function(){
		var el = this;
		// 使用jquery的ajax的方式
		$.ajax({
			url: 'user',
			type: 'post',
			data:{
				oper: 'validName',
				loginName: $(el).val()
			},
			success: function(result){
				if(result == 'true'){
//					$(el).next().html(' ');
					$(el).next().addClass('hidden');
					$(el).closest('.form-group').addClass('has-success').removeClass('has-error');
				}else{
					// $(el).after('<span>用户名已使用</span>');
//					$(el).next().html('用户名已使用');
					$(el).next().removeClass('hidden');
					$(el).closest('.form-group').addClass('has-error').removeClass('has-success');
				}

			},
			error: function(){
				alert('服务器错误');
			}
		});
		
		
	});
	
	// 给注册按钮绑定事件
	
	$('#backtologin').click(function(){
		window.location.href='login.jsp';
				
	});
	
	
	
	
	
});

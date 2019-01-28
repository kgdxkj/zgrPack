$(function(){
	//登陆
	$("#login").click(function(){
		var username=$("#login_username").val();
		var password=$("#login_password").val();
		$.ajax({
			url:basePath+"/login",   //http://localhost:8080/zgrPack/user/register/registerUser
			type:"post",
			data:{
				"username":username,
				"password":password
			},
			success:function(result){
				var status=result.status;
				if(status){
					window.location.href="index.jsp";     //http://localhost:8080/zgrPack/index.jsp
				}else{
					alert(result.msg);
				}
			},
			error:function(){
				alert("请求失败,稍后重试！");
			}
			
			
		})
	})
	//注册提交
	$("#login_register_submit").click(function(){
		var userName=$("#username").val().trim();
		var password=$("#password").val().trim();
		var confirm_password=$("#confirm_password").val();
		$.ajax({
			url:basePath+"user/createUser",   //http://localhost:8080/zgrPack/user/register/registerUser
			type:"post",
			data:{
				"userName":userName,
				"password":password,
				"confirm_password":confirm_password
			},
			success:function(result){
				alert(result);
//				var status=result.status
//				alert("2"+status);
				var msg=result.msg;
				alert(msg);
//				var data=result.data;
//				alert("4"+data);
			}
			
			
		})
		
		
		
		
	})
})


//判断用户名是否合法，是否可用。
function is_registered(value){
	//判断输入的字符是否为空
	if(value!=""){
		// 验证130-139,150-159,180-189号码段的手机号码
		var phone = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		// 验证邮箱
		var email = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
		 
//		if(!phone.test(value) && !email.test(value)){
//			$("#username_notice").html("邮箱或者手机号不正确!");
//			$("#login_register_submit").attr({disabled:"disabled"});
//		}else{
			$.post("user/selectUserName", { userName: value },
					function(result){
					var status=result.status
					if(status){
						//用户名可用
						$("#username_notice").html("");
						$("#login_register_submit").removeAttr("disabled");
					}else{
						//用户名已存在
						$("#username_notice").html("该用户名已存在!!");
						$("#login_register_submit").attr({disabled:"disabled"});
					}
				});
		//}
		  
	}
}


function check_password(value){
	if(value.length<6){
		$("#password_notice").html("登录密码最少6位!");
		$("#login_register_submit").attr({disabled:"disabled"});
	}else{
		$("#password_notice").html("");
		$("#login_register_submit").removeAttr("disabled");
	}
}


function check_conform_password(value){
	var password=$("#password").val();
	if(value == password){
		$("#conform_password_notice").html("");
		$("#login_register_submit").removeAttr("disabled");
	}else{
		$("#conform_password_notice").html("两次密码不相符");
		$("#login_register_submit").attr({disabled:"disabled"});
	}
}





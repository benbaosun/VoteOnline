<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/login.css  ">
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css"/>
    <title>register</title>
  
</head>
<body style="background-image: url(img/loginback.jpg);">
        <nav id="nav">
                <section class="cen">
                <h1 class="logo"></h1>
                 <ul class="link">
                 	<li ><a href="index.jsp">图文投票</a></li>	
                	<li><a href="videoVote.jsp">视频投票</a></li>
                	<li><a href="musicVote.jsp">音乐投票</a></li>
                	<li><a href="AddOption.jsp">发起投票</a></li>
                	<li><a href="myVote.jsp">我的投票</a></li>
                	<li><a href="login.jsp">登录</a></li>
                	<li class="active"><a href="#">注册</a></li>
                    </ul>
                </section>
        </nav>
        <div class="login-form">
            <div class="avter">
                <img src="img/a2x.png" alt="" /> 
           </div> 
           <form action="register" method="post" onsubmit="return checkLogin()">
               <i class="fa fa-user"></i>
               <input type="text" name="username" id="username" placeholder="请输入手机号码" onblur="validateUsername()" />
               <br><span id="sname"></span>
               <div>
                <i class="fa fa-user"></i>
               <input type="text" name="useremail" id="useremail" placeholder="请输入邮箱地址" onblur="validateUseremail()" />
               <br><span id="semail"></span>
               </div>
               <div >
                <i class="fa fa-key"></i>
                <input type="password" name="password" id="password" placeholder="请输入密码"  value="" onblur="validatePwd()" onfocus="clearPwdContent()"/>
                <br><span id="spwd"></span>
            </div>
            <div >
                <i class="fa fa-key"></i>
                <input type="password" name="repassword" id="repassword" placeholder="请确认密码"  />
                <br><span id="spwd"></span>
            </div>
            <div class="singin">
                   <input type="submit"  value="注册" />
               </div>
           </form>
           
    </div>  
      <script type="text/javascript">
		function validateUsername(){
			var username = document.getElementById("username").value;
			var reg=/^\d{11}$/;
			if(reg.test(username)){
				document.getElementById("sname").innerHTML="";
				return true;
			}else{
				document.getElementById("sname").innerHTML="手机号码错误";
				return false;					
			}
			/*var reg=/^[a-zA-Z]{5,~}$/;
			//alert(username.length);
			if(username.length<5){
				document.getElementById("sname").innerHTML="你必须使用此格式：只能是五个以上英文字符";
				return false;
			}else{
				document.getElementById("sname").innerHTML="";
				return  true;
			}*/
		}
		
		function validatePwd(){
			var pwd = document.getElementById("password").value;
			if (pwd.length<6) {
				document.getElementById("spwd").innerHTML = "密码必须大于六位数";
				return false;
			} else{
				document.getElementById("spwd").innerHTML="";
				return true;
			}
		}
		function validateUseremail(){
			var useremail= document.getElementById("useremail").value;
			var reg=/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
			if(reg.test(useremail)){
				document.getElementById("semail").innerHTML="";
				return true;
			}else{
				document.getElementById("semail").innerHTML="邮箱地址错误";
				return false;	
			}
		}
		
		function checkLogin(){
			if(validateUsername()&&validatePwd()){
				return true;
			}else{
				return false;
		 }
		}
		
		function clearPwdContent(){
			var pwd= document.getElementById("password").value="";
		}
	
	</script>
</body>
    
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
	<base href="<%=basePath%>">
	
	
	<title>羽毛球约球网</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">	
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
<script type="text/javascript">
function login(){
	var th = document.form1;
	if(th.username.value==""){
		alert("账号不能为空！");
		th.username.focus();
		return;
	}
	if(th.pswd.value==""){
		alert("密码不能为空！");
		th.pswd.focus();
		return;
	}
	
	th.action = "<%=path%>/servlet/LoginAction";
	th.submit();


}

</script>
	
  </head>
  
  <body style="background: url(images/ball1.jpg) no-repeat center 0px;
background-position: center 0;
background-size: cover;">
  
   <div style="text-align:center">   
   <form name="form1" action="" method="post">
   <table  style="margin:auto">   
   <tr>   		 		
   	</tr>
   	<tr>
   		<td>账号:</td>
   		<td><input type="text" name="username"></input></td>   		
   	</tr>
   	<tr>
   		<td>密码:</td>
   		<td><input type="password" name="pswd"></input></td>   		
   	</tr>
   		<tr>  		
   		<td  colspan="2" align="center">
   		<button type="button" name="" value="" onclick="login()">登录</button>
   		<button type="button" name="" value="" onclick="javascript:location.href='register.jsp'">注册</button>
   		</td>   		
   	</tr>   
   
   </table>
   </form>
  </div>
  
  </body>
</html>
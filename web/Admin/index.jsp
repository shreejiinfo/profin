<%-- 
    Document   : index
    Created on : 20 Feb, 2015, 2:44:24 PM
    Author     : VIKAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login Form</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />

<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>


<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>


<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>
<body id="login-bg"> 
 
    <form name="f1" action="${pageContext.request.contextPath}/AdminLoginServlet" method="post">
<div id="login-holder">

	
	<div id="logo-login">
		<a href="home.jsp"></a>
	</div>
	
	
	<div class="clear"></div>
	
	
	<div id="loginbox">
	
	
	<div id="login-inner">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th>Username</th>
			<td><input type="text" name="username" class="login-inp" /></td>
		</tr>
		<tr>
			<th>Password</th>
                        <td><input type="password" value="************" name="password"  onfocus="this.value=''" class="login-inp" /></td>
		</tr>
		<tr>
			<th></th>
			
		<tr>
			<th></th>
                        <td><input type="submit" class="submit-login"  /></td>
		</tr>
		</table>
	</div>
 	
	
 </div>
 
	<div id="forgotbox">
		<div id="forgotbox-text">Please send us your email and we'll reset your password.</div>
		
		<div id="forgot-inner">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th>Email address:</th>
			<td><input type="text" value=""   class="login-inp" /></td>
		</tr>
		<tr>
			<th> </th>
			<td><input type="button" class="submit-login"  /></td>
		</tr>
		</table>
		</div>
		
		<div class="clear"></div>
		<a href="" class="back-login">Back to login</a>
	</div>
	

</div>
</form>
    </body>
</html>

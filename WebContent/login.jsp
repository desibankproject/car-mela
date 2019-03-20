
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE HTML>
<html>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Free Racing a Auto Mobile Category Website Template | Gallery :: w3layouts</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!------ Light Box ------>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<link rel="stylesheet" href="css/swipebox.css">
<script src="js/jquery.swipebox.min.js"></script> 
<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
	<!------ Eng Light Box ------>	
	
	<script type="text/javascript">

			function clearMessage() {
				document.getElementById("errorMessage").innerHTML="";
			}
			function validate(){
				var username=document.loginform.username.value;
				if(username.length==0) {
					document.getElementById("errorMessage").innerHTML="Username cannot be empty....";
					document.loginform.username.focus();
					return;
				}
				var password=document.loginform.password.value;
				if(password.length==0) {
					document.getElementById("errorMessage").innerHTML="Password cannot be empty....";
					document.loginform.password.focus();
					return;
				}
				//submitting form using JavaScript....
				document.loginform.submit();
			}


	</script>
	
</head>
<body>
<div class="header">	
  <div class="wrap"> 
	<div class="header-top">
		 <div class="logo">
			 <a href="index.html"><img src="images/logo.png" alt=""></a>
		 </div>
		 <div class="menu">
			<div id="cssmenu">
				<ul>
				   <li class="active"><a href="index.jsp"><span>Home</span></a></li>
				   <li class="has-sub"><a href="about.html"><span>About</span></a></li>
				   <li><a href="GalleryPage"><span>Gallery</span></a></li>
				   <li class="last"><a href="contact.html"><span>Contact</span></a></li>
				</ul>
            </div>
		  </div>	
		  <div class="clear"></div> 
	   </div>
   </div>	
</div>

<div class="container">
<br/><br/>
<hr/>
<div style="width: 60%;"> 
  <h2>Login</h2>
  <span style="color:Red"  id="errorMessage">${requestScope.message} </span>
  <form name="loginform" action="LoginPage" method="post">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username"  name="username"  onkeypress="clearMessage();">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password"  name="password"  onkeypress="clearMessage();">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
   <button type="button" class="btn btn-danger" onclick="validate();">login</button>
  </form>
  </div>
</div>
<br/>
<hr/>
   <%@include file="footer.jsp" %>
</body>

</html>
    





































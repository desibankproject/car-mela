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
				   <c:if test="${sessionScope.username!=null}">
				   <li><a href="${pageContext.request.contextPath}/LogoutPage"><span>Logout</span></a></li>
				   </c:if>
				     <c:if test="${sessionScope.username==null}">
				   <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
				   </c:if>
				   <li><a href="addNewCar.jsp"><span>Add New Car</span></a></li>
				</ul>
            </div>
		  </div>	
		  <div class="clear"></div> 
	   </div>
   </div>	
</div>
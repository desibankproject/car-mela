<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE HTML>
<html>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Free Racing a Auto Mobile Category Website Template | Gallery :: w3layouts</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</head>
<body>

<body>
   <%@include file="header.jsp" %>
     <div class="main">
		<div class="content-top">
			<div class="wrap">
				<!---728x90--->

				<div class="about">
					<div class="heading4">
				 	<h2>Our Gallery</h2>
				</div>
				 
			
					 
				<c:forEach items="${galleryDetails}" var="item" varStatus="row">
				    <c:if test="${(row.count-1)%4==0}">
				        	 <div class="section group">
				    </c:if>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="${item.image}" class="swipebox" title="Image Title"> <img src="${item.image}" alt=""><span class="zoom-icon"></span> </a>
						<h4>${item.title}</h4>
						<p>${item.description}</p>
						<a href="#" class="link">Read More</a>
						<c:if test="${sessionScope.username!=null}">
						<a href="DeletePage?galid=${item.galId}"> <button type="button" class="btn btn-danger">Delete</button></a>
					</c:if>
					</div>
					 <c:if test="row.count%4==0}">
				    	 </div>
				    </c:if>
					</c:forEach>
					
					<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic6.jpg" class="swipebox" title="Image Title"> <img src="images/pic6.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic7.jpg" class="swipebox" title="Image Title"> <img src="images/pic7.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic8.jpg" class="swipebox" title="Image Title"> <img src="images/pic8.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic6.jpg" class="swipebox" title="Image Title"> <img src="images/pic6.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="clear"></div> 
		   		</div>
				<!---728x90--->

		   		<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic9.jpg" class="swipebox" title="Image Title"> <img src="images/pic9.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic10.jpg" class="swipebox" title="Image Title"> <img src="images/pic11.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic11.jpg" class="swipebox" title="Image Title"> <img src="images/pic10.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic12.jpg" class="swipebox" title="Image Title"> <img src="images/pic12.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient.</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="clear"></div> 
		   		</div>
			<!---728x90--->

			  </div>
		</div>
	</div>
	</div>
   <%@include file="footer.jsp" %>
</body>

</html>

    	
    	
            
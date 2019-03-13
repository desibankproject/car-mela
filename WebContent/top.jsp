		<div class="content-top">
			<div class="wrap">
			<!---728x90--->
         	  <c:forEach items="${clubs}" var="item">
				<div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					<div class="thumb-pad2">
	                    <div class="thumbnail">
	                        <h4>${item.name}</h4>
	                        <figure><img src="${pageContext.request.contextPath}/${item.image}" alt=""><em class="sp1"></em></figure>
	                        <div class="caption">
	                            <p>${item.description}</p>
	                            <a href="#" class="btn-default btn1">more</a>
	                        </div>
	                    </div>
                	</div>
				</div>
				</div>
				</c:forEach>
				<div class="clear"></div> 
			
			</div>
		</div>
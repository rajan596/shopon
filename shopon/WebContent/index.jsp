<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/simpleCart.min.js"> </script>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfont-->
<script src="js/jquery.easydropdown.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
</head>
<body>
<div class="header">	
      <div class="container"> 
         <div class="header-top">
      		 <div class="logo">
				<a href="index.html"><h3>Shopon - Online Shopping Cart</h3></a>
			 </div>
		   <div class="header_right">
			 <ul class="social">
				<li><a href=""> <i class="fb"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
				<li><a href=""><i class="utube"> </i> </a></li>
				<li><a href=""><i class="pin"> </i> </a></li>
				<li><a href=""><i class="instagram"> </i> </a></li>
			 </ul>
			 
			  <div class="lang_list">
			  <select tabindex="4" class="dropdown">
				<option value="" class="label" value="">
					<% if(session.getAttribute("username")==null) {%>
					<%} 
					else {
						out.print("Hello "+session.getAttribute("username")); 
					%>
					<% } %>
				</option>
			  </select>
   			</div>
			<div class="clearfix"></div>
          </div>
  
          <div class="clearfix"></div>
		 </div>  
		 <div class="banner_wrap">
			<div class="bannertop_box">
   		 		<ul class="login">
   		 			<% if(session.getAttribute("username")==null) {%>
						<li class="login_text"><a href="login.jsp">Login</a></li>
					<%} 
					else { %>
						<li class="login_text"><a href="users/logout.jsp">Logout</a></li>
					<% } %>

   		 			<li class="wish"><a href="checkout.html">Wish List</a></li>
   		 			<div class='clearfix'></div>
   		 		</ul>
   		 		
   		 		<div class="cart_bg">
	   		 	  <ul class="cart">
	   		 		 <a href="checkout.html">
					    <h4><i class="cart_icon"> </i><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><div class="clearfix"> </div></h4>
					 </a>
				     <h5 class="empty"><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></h5>
				     <div class="clearfix"> </div>
                  </ul>
	   		 	</div>
	   		 	
			  	<ul class="quick_access">
   		 			<li class="view_cart"><a href="checkout.html">View Cart</a></li>
   		 			<li class="check"><a href="checkout.html">Checkout</a></li>
   		 			<div class='clearfix'></div>
   		 		</ul>
   		 		<div class="search">
	  			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				   <input type="submit" value="">
	  			</div>
	  			<div class="welcome_box">
	  				<h3>Welcome to Shopon</h3>
	  				<p>Online Shopping via Customized Site</p>
	  			</div>
   		 	</div>
   		 	<div class="banner_right">
   		 		<h1>Large Varieties <br>Great Offers</h1>
   		 		<p><h3>Get Benifit of DIwali Deals, Deal ki Deal</h3></p>
   		 		<a href="#" class="banner_btn">Buy Now</a>
   		 	</div>
   		 	<div class='clearfix'></div>
	    </div>
	   </div>
	</div>
	<div class="main">
	  <div class="content_box">
		<div class="container">
			<div class="row">
			<% 
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopon","root","");
		
			/* execute query */
			PreparedStatement ps=conn.prepareStatement("select * from product");
			ResultSet rs=ps.executeQuery();
	
			%>
			<!-- Product List -->
			   <div class="col-md-9">
				<h3 class="m_1">Products</h3>
				
				<% while(rs.next()) {%>
				 <div class="content_grid">
				 
				   <!-- Item1 -->
				   <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem"> 
				  	   <a href="single.html">
						   <div class="inner_content clearfix">
							<div class="product_image">
								<img src="images/pic1.jpg" class="img-responsive" alt=""/>
								<a href="" class="button item_add item_1"> 
								
								</a>	
								 <div class="product_container">
								   <div class="cart-left">
									 <p class="title"><% out.print(rs.getString(3)); %></p>
								   </div>
								  <span class="amount item_price"><span>&#8377</span><% out.print(rs.getString(5)); %></span>
								   <div class="clearfix"></div>
							     </div>		
							  </div>
		                    </div>
		                 </a>
				    </div>
				    
				    <!-- Item2 -->
				    <% if(rs.next()) {%>
				    <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem"> 
				  	   <a href="single.html">
						   <div class="inner_content clearfix">
							<div class="product_image">
								<img src="images/pic2.jpg" class="img-responsive" alt=""/>
								<a href="" class="button item_add item_1"> </a>		
								<div class="product_container">
								   <div class="cart-left">
									 <p class="title"><% out.print(rs.getString(3)); %></p>
								   </div>
								   <span class="amount item_price"><span>&#8377</span><% out.print(rs.getString(5)); %></span>
								   <div class="clearfix"></div>
							     </div>		
							</div>
						</div>
		                 </a>
				    </div>
				    <% } %>
				    
				    <!-- Item 3 -->
				    <% if(rs.next()) {%>
				    <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1"> 
				  	      <a href="single.html">
						   <div class="inner_content clearfix">
							<div class="product_image">
								<img src="images/pic3.jpg" class="img-responsive" alt=""/>
								<a href="" class="button item_add item_1"> </a>	
								<div class="product_container">
								   <div class="cart-left">
									 <p class="title"><% out.print(rs.getString(3)); %></p>
								   </div>
								   <span class="amount item_price"><span>&#8377</span><% out.print(rs.getString(5)); %></span>
								   <div class="clearfix"></div>
							     </div>		
							  </div>
		                    </div>
		                 </a>
				   </div>
				   <% } %>
				   
				   <!-- Item 4 -->
				    <% if(rs.next()) {%>
				    <div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem last_1"> 
				  	      <a href="single.html">
						   <div class="inner_content clearfix">
							<div class="product_image">
								<img src="images/pic3.jpg" class="img-responsive" alt=""/>
								<a href="" class="button item_add item_1"> </a>	
								<div class="product_container">
								   <div class="cart-left">
									 <p class="title"><% out.print(rs.getString(3)); %></p>
								   </div>
								   <span class="amount item_price"><span>&#8377</span><% out.print(rs.getString(5)); %></span>
								   <div class="clearfix"></div>
							     </div>		
							  </div>
		                    </div>
		                 </a>
				   </div>
				   <% } %>
				   
				   <div class="clearfix"></div>
			  </div>
			<% } %><!-- While ends here -->	
			
			  </div>
			</div>
		 </div>
		</div>
	
	<!-- footer -->
	<div class="footer_bottom">
		<div class="container">
			<div class="copy">
			   <p>Online Shopping Platform - Shopon</p>
			</div>
		</div>
	</div>
</body>
</html>		
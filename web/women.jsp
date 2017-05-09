<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--theme-style-->
        <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
        <!--//theme-style-->
        <script src="js/jquery.min.js"></script>
        <!--- start-rate---->
        <script src="js/jstarbox.js"></script>
        	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
        		<script type="text/javascript">
        			jQuery(function() {
        			jQuery('.starbox').each(function() {
        				var starbox = jQuery(this);
        					starbox.starbox({
        					average: starbox.attr('data-start-value'),
        					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
        					ghosting: starbox.hasClass('ghosting'),
        					autoUpdateAverage: starbox.hasClass('autoupdate'),
        					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
        					stars: starbox.attr('data-star-count') || 5
        					}).bind('starbox-value-changed', function(event, value) {
        					if(starbox.hasClass('random')) {
        					var val = Math.random();
        					starbox.next().text(' '+val);
        					return val;
        					}
        				})
        			});
        		});
        		</script>

    </head>
    <body>
        <div class="header">
        <div class="container">
        		<div class="head">
        			<div class=" logo">
        				<a href="index.html"><img src="images/logo.png" alt=""></a>
        			</div>
        		</div>
        	</div>
        	<div class="header-top">
        		<div class="container">
        		<div class="col-sm-5 col-md-offset-2  header-login">
        					<ul >
        						<%
                                                String msg =(String)session.getAttribute("user");
                                            if(msg==null||msg=="")
                                            {
                                            out.println("<li><a href='userlogin.jsp'>Login</a></li>");
                                            out.println("<li><a href='signup.jsp'>Register</a></li>");
                                            }
                                            else
                                            {
                                                out.println("<p style='color:white'>Welcome&nbsp"+msg+"</p>");
                                                out.println("<a href='logout.jsp'><b>Logout</b></a>");
                                                
                                            }
                                            %>
        						
        					</ul>
        				</div>

        		</div>
        		</div>

        		<div class="container">

        			<div class="head-top">

        		 <div class="col-sm-8 col-md-offset-2 h_menu4">
        				<nav class="navbar nav_bottom" role="navigation">

         <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header nav_2">
              <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

           </div>
           <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav nav_1">
                    <li><a class="color" href="index.jsp">Home</a></li>

            		<li class="dropdown mega-dropdown active">
        			    <a class="color1" href="women.jsp">Women</a>
        			</li>
        			<li class="dropdown mega-dropdown active">
        			    <a class="color2" href="men.jsp">Men</a>
                    </li>
        			
                    <li ><a class="color6" href="contact.jsp">Contact</a></li>
                </ul>
             </div><!-- /.navbar-collapse -->

        </nav>
        			</div>
        			<div class="col-sm-2 search-right">
        				<ul class="heart">
        				<li>
        				<a href="wishlist.html" >
        				<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
        				</a></li>
        				<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
        					</ul>
        					<div class="cart box_1">
        						<a href="checkout.html">
        						<h3> <div class="total">
        							<span class="simpleCart_total"></span></div>
        							<img src="images/cart.png" alt=""/></h3>
        						</a>
        						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

        					</div>
        					<div class="clearfix"> </div>

        						<!----->

        						<!---pop-up-box---->
        			<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
        			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
        			<!---//pop-up-box---->
        			<div id="small-dialog" class="mfp-hide">
        				<div class="search-top">
        					<div class="login-search">
        						<input type="submit" value="">
        						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">
        					</div>
        					<p>Shopin</p>
        				</div>
        			</div>
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
        						<!----->
        			</div>
        			<div class="clearfix"></div>
        		</div>
        	</div>
        </div>

        <div class="content-mid" id="trending" style="padding-top:10px;">
            <br>
            <h3>Women Dressing</h3>
            <label class="line"></label>
            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc1.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.jsp?id=w1&img=images/pc1.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Women</span>
                        <h6><a href="single.jsp">Sed ut perspiciati</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc2.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.jsp>id=w1&img=images/pc2.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Women</span>
                        <h6><a href="single.html">At vero eos</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc3.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.jsp?id=w3&img=images/pc3.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Men</span>
                        <h6><a href="single.html">Sed ut perspiciati</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc4.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.html?id=w4&img=images/pc4.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Women</span>
                        <h6><a href="single.html">On the other</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="clearfix"></div>
            </div>
                            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc5.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.html?id=w5&img=images/pc5.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Men</span>
                        <h6><a href="single.html">On the other</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc6.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.jsp?id=w6&img=images/pc6.jpg><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Men</span>
                        <h6><a href="single.html">Sed ut perspiciati</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc7.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.html?id=w7?img=images/pc7.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Women</span>
                        <h6><a href="single.html">At vero eos</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                <div class=" mid-pop">
                <div class="pro-img">
                    <img src="images/pc8.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                    <a class="picture" href="images/pc8.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                    <a href="single.html?id=w8&img=images/pc7.jpg"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                    </div>
                    <div class="mid-1">
                    <div class="women">
                    <div class="women-top">
                        <span>Men</span>
                        <h6><a href="single.html">Sed ut perspiciati</a></h6>
                        </div>
                        <div class="img item_add">
                            <a href="#"><img src="images/ca.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                        </div>
                        <div class="mid-2">
                            <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                              <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </body>
</html>

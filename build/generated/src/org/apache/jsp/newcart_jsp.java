package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newcart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Shopping Cart</title>\r\n");
      out.write("\t\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\"/>\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/custom.css\"/>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\r\n");
      out.write("\t\t<nav class=\"navbar\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<a class=\"navbar-brand\" href=\"#\">Your online store</a>\r\n");
      out.write("\t\t\t\t<div class=\"navbar-right\">\r\n");
      out.write("\t\t\t\t\t<div class=\"container minicart\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"container-fluid breadcrumbBox text-center\">\r\n");
      out.write("\t\t\t<ol class=\"breadcrumb\">\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">Review</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"active\"><a href=\"#\">Order</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">Payment</a></li>\r\n");
      out.write("\t\t\t</ol>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"container text-center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"col-md-5 col-sm-12\">\r\n");
      out.write("\t\t\t\t<div class=\"bigcart\"></div>\r\n");
      out.write("                <img src=\"images/sprite.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t<h1>Your shopping cart</h1>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\tThis is a free and <b><a href=\"http://tutorialzine.com/2014/04/responsive-shopping-cart-layout-twitter-bootstrap-3/\" title=\"Read the article!\">responsive shopping cart layout, made by Tutorialzine</a></b>. It looks nice on both desktop and mobile browsers. Try it by resizing your window (or opening it on your smartphone and pc).\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"col-md-7 col-sm-12 text-left\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li class=\"row list-inline columnCaptions\">\r\n");
      out.write("\t\t\t\t\t\t<span>QTY</span>\r\n");
      out.write("\t\t\t\t\t\t<span>ITEM</span>\r\n");
      out.write("\t\t\t\t\t\t<span>Price</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"quantity\">1</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Birthday Cake</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"popbtn\"><a class=\"arrow\"></a></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$49.95</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"quantity\">50</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Party Cups</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"popbtn\"><a class=\"arrow\"></a></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$5.00</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"quantity\">20</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Beer kegs</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"popbtn\"><a class=\"arrow\"></a></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$919.99</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"quantity\">18</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Pound of beef</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"popbtn\"><a class=\"arrow\"></a></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$269.45</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"quantity\">1</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Bullet-proof vest</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"popbtn\"  data-parent=\"#asd\" data-toggle=\"collapse\" data-target=\"#demo\"><a class=\"arrow\"></a></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$450.00</span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"row totals\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"itemName\">Total:</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"price\">$1694.43</span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"order\"> <a class=\"text-center\">ORDER</a></span>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- The popover content -->\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"popover\" style=\"display: none\">\r\n");
      out.write("\t\t\t<a href=\"#\"><span class=\"glyphicon glyphicon-pencil\"></span></a>\r\n");
      out.write("\t\t\t<a href=\"#\"><span class=\"glyphicon glyphicon-remove\"></span></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- JavaScript includes -->\r\n");
      out.write("\r\n");
      out.write("\t\t<script src=\"http://code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"js/customjs.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

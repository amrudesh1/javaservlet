package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <script>\n");
      out.write("        function validate()\n");
      out.write("        {\n");
      out.write("        var ps1 = document.form.psw.value;\n");
      out.write("        var ps2 =document.form.psw2.value;\n");
      out.write("        if(ps1!==ps2)\n");
      out.write("    {\n");
      out.write("            alert(\"Incorrect Password\");\n");
      out.write("                return false;\n");
      out.write("    }\n");
      out.write("        }\n");
      out.write("            \n");
      out.write("        \n");
      out.write("        </script>\n");
      out.write("<style>\n");
      out.write("/* Full-width input fields */\n");
      out.write("input[type=text], input[type=password] {\n");
      out.write("    width: 100%;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    display: inline-block;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set a style for all buttons */\n");
      out.write("button {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Extra styles for the cancel button */\n");
      out.write(".cancelbtn {\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    background-color: #f44336;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Float cancel and signup buttons and add an equal width */\n");
      out.write(".cancelbtn,.signupbtn {\n");
      out.write("    float: left;\n");
      out.write("    width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add padding to container elements */\n");
      out.write(".container {\n");
      out.write("    padding: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats */\n");
      out.write(".clearfix::after {\n");
      out.write("    content: \"\";\n");
      out.write("    clear: both;\n");
      out.write("    display: table;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change styles for cancel button and signup button on extra small screens */\n");
      out.write("@media screen and (max-width: 300px) {\n");
      out.write("    .cancelbtn, .signupbtn {\n");
      out.write("       width: 100%;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h2>Signup Form</h2>\n");
      out.write("\n");
      out.write("<form action=\"addnewuser.jsp\" style=\"border:1px solid #ccc\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("      <label><b>Name</b></label>\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Name\" name=\"name\" required>\n");
      out.write("    <label><b>Email</b></label>\n");
      out.write("    <input type=\"text\" placeholder=\"Enter Email\" name=\"email\" required>\n");
      out.write("\n");
      out.write("    <label><b>Password</b></label>\n");
      out.write("    <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("\n");
      out.write("    <label><b>Repeat Password</b></label>\n");
      out.write("    <input type=\"password\" placeholder=\"Repeat Password\" name=\"psw2\" required>\n");
      out.write("    <p>By creating an account you agree to our <a href=\"#\">Terms & Privacy</a>.</p>\n");
      out.write("\n");
      out.write("    <div class=\"clearfix\">\n");
      out.write("           <button type=\"submit\" class=\"signupbtn\" >Sign Up</button>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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

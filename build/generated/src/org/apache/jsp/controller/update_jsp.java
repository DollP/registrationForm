package org.apache.jsp.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
      Connection con;
      Statement stm;
      ResultSet rest;
      
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      ");
      out.write("\n");
      out.write("      ");

          try{
          con=connect.MysqlConnection.ConnectTo();
          String uname=request.getParameter("id");
          String sql="Select *from sample where username='"+uname+"'";
          stm=con.createStatement();
          rest=stm.executeQuery(sql);
          while(rest.next()){
          
      
      out.write("\n");
      out.write("      <form action=\"registercontroller\" method=\"get\">\n");
      out.write("            <pre>\n");
      out.write("                NAME            :   <input type=\"text\" value=\"");
      out.print(rest.getString("name"));
      out.write("\" name=\"name\">\n");
      out.write("                DESCRIPTION     :   <textarea name=\"info\" style=\"height:100px;width:50%\"> ");
      out.print(rest.getString("info"));
      out.write(" </textarea>\n");
      out.write("                USER NAME       :   <input disabled=\"true\" type=\"text\" value=\"");
      out.print(rest.getString("username"));
      out.write("\" name=\"username\">\n");
      out.write("                PASSWORD        :   <input type=\"password\" value=\"");
      out.print(rest.getString("pass"));
      out.write("\" name=\"pass\">\n");
      out.write("                SELECT TYPE     :   <input type=\"radio\" name=\"type\" value=\"User\">USER\n");
      out.write("                                    <input type=\"radio\" name=\"type\" value=\"Admin\">Admin\n");
      out.write("                                    <input type=\"submit\">\n");
      out.write("            </pre>\n");
      out.write("            </form>\n");
      out.write("                ");

           }
          }   catch(Exception ex)
                {
                    out.print(ex);
           
                }
                
      out.write("\n");
      out.write("    </body>\n");
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

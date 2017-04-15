package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/includes/header.jsp");
    _jspx_dependants.add("/includes/footer.jsp");
  }

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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Projeto 03 - POO  - JSP</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/meiocss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/headercss.css\">\n");
      out.write("<div id=\"topo\">\n");
      out.write("    <nav>\n");
      out.write("        <b><p id=\"titulo\">POO_03</p></b>\n");
      out.write("        <span><a href=\"home.jsp\" class=\"btn\">Home</a></span>\n");
      out.write("        <span><a href=\"amortizacao-constante.jsp\" class=\"btn\">Amortização Constante</a></span>\n");
      out.write("        <span><a href=\"amortizacao-americana.jsp\" class=\"btn\">Amortização Americana</a></span>\n");
      out.write("        <span><a href=\"tabela-price.jsp\" class=\"btn\">Tabela Price</a></span>\n");
      out.write("    </nav>\n");
      out.write("</div>\n");
      out.write("<hr/>");
      out.write("\n");
      out.write("        <div id=\"meio\" style=\"text-align: center;\">\n");
      out.write("            <h1>Grupo 08 - Trabalho de POO</h1>\n");
      out.write("            <hr>\t\t\n");
      out.write("            <h2>Objetivo</h2>\n");
      out.write("            <p>Site criado com o instuito de calcular amortizações e tabela-price</p>\n");
      out.write("            <hr>\n");
      out.write("            <h2>Integrantes do Grupo</h2>\n");
      out.write("            <p>Andre Tripode</p>\n");
      out.write("            <p>Felipe Reis</p>\n");
      out.write("            <p>Helaman Spadari</p>\n");
      out.write("            <p>Thiago Bonini</p>\n");
      out.write("\t</div>\n");
      out.write("        ");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/footercss.css\">\n");
      out.write("<div id=\"rodape\" style=\"text-align: center\">\n");
      out.write("\t<hr>\n");
      out.write("    <h3>Projeto 03 - POO - ADS - Noturno</h3>\n");
      out.write("</div>");
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

<%-- 
    Document   : amortizacao-constante
    Created on : 15/04/2017, 00:14:21
    Author     : PA01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 03 - POO  - JSP</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <div id="meioConstante">
            <h2>Amortização Constante</h2>
     <%
            float j = 1;
            
            int p = 1;
            float n = 1;
            int i = 1;
            
           
            
          
            
            
            try{n = Float.parseFloat(request.getParameter("n"));}
            catch(Exception e){}
             try{p = Integer.parseInt(request.getParameter("p"));}
            catch(Exception e){}
              try{j = Float.parseFloat(request.getParameter("j"));}
            catch(Exception e){}
                
               float amorti = n / p;
               float juros = 1;
               float par = n;

            
            

        %>
        <form>
           <br/> Valor total:    
            <input type="number" name="n" value="<%=n%>"/>
          
              <br/> Toal de periodos:
            <input type="number" name="p" value="<%=p%>"/>
            
              <br/> Valor dos juros:
            <input type="number" name="j" value="<%=j%>"/><br/>
            <input type="submit" value="Gerar Amortização"/>
        </form>
        <hr/>
        <table border = "1">
            <%for(i=1; i<=p; i++){%>
            
            <tr>
                <td> <%=i%></td>
                
                <td><%=(juros = n * j / 100) %></td>
                
                <td><%=(par+juros)%></td>
                
                <td> <%=(n = n-amorti)%></td>
                
                <td><%=amorti%></td>
                  
            
            </tr>
            <%}%>
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>

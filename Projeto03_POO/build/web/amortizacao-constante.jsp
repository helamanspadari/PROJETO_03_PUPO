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
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <title>Projeto 03 - POO  - JSP</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <div class="formatação">
            <h2>Amortização Constante</h2>
     <%
            float j = 0;
            
            int p = 0;
            float n = 0;
            int i = 0;
            
            
            
            try{n = Float.parseFloat(request.getParameter("n"));}
            catch(Exception e){}
             try{p = Integer.parseInt(request.getParameter("p"));}
            catch(Exception e){}
              try{j = Float.parseFloat(request.getParameter("j"));}
            catch(Exception e){}
                
               float amorti = n / p;
               
               float juros = 0;
               float par = n + juros;
               

            
     %>
        <form>
            <b>Capital</b><br/>    
            <input type="number" name="n" />
          
            <br/> <b>Meses</b><br/>        
            <input type="number" name="p" />
            
            <br/> <b>Juros</b><br/>
            <input type="number" name="j" /><br/><br/>            
            <input class="btn" type="submit" value="Gerar Amortização"/>
        </form>
            <br/>
            <hr>
        <table border="2" class="tabela1">
            <th> Parcelas </th>
            <th> Juros </th>
            <th> Total da parcela </th>
            <th> Valor amortizado </th>
            <%for(i=1; i<=p; i++){%>
            
            <tr>
                <td><%=i%></td>
                
                <td>R$ <%= String.format("%.2f", juros = n * j / 100) %></td>
                
                <td>R$ <%=String.format("%.2f", par+juros)%></td>
                
                <td>R$ <%=String.format("%.2f", n = n-amorti)%></td>
                
                
                  
            
            </tr>
            <%}%>
        </table>
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>

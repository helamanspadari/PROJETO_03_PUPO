<%-- 
    Document   : amortizacao-americana
    Created on : 15/04/2017, 00:14:42
    Author     : PA01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P03 - Amortização Americana</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf"%>
        <div id="meioAmericana">
            <h2>Amortização Americana</h2>
            <%
            float parcela = 0;
            float capital = 0;
            float juros = 0;
            int meses = 0;
            
            try{capital = Float.parseFloat(request.getParameter("C"));}
            catch(Exception e){}
            try{juros = Float.parseFloat(request.getParameter("j"));}
            catch(Exception e){}
            try{meses = Integer.parseInt(request.getParameter("m"));}
            catch(Exception e){}

            juros = capital * (juros/100);
            parcela = juros;
            float cap = capital; 
            %>
            <form id="esquerda"> 
                <label for="C">Capital</label><br>
                <input type="text" name="C" id="C">
                <br>
                <label for="m">Meses</label><br>
                <input type="text" name="m" id="m">
                <br>
                <label for="j">Juros</label><br>
                <input type="text" name="j" id="j">
                
                <br><br>
                <input type="submit" value="Calcular">
            </form>
            <br>
            <table border="1" id="direita">
                <th>Parcelas</th>
                    <th>Amortização</th>
                    <th>Valor dos Juros</th>
                    <th>Valor da Prestação</th>
                    <th>Saldo Devedor</th>
                    
                <%for(int i = 1; i <= meses; i++){
                    
                    if(i == meses){
                        parcela = capital + juros;
                        cap = capital;
                        capital = 0;
                    }
                    if( i != meses){
                        cap = 0;
                    }                   
                %>                
                <tr>
                    <td><%=i%></td>
                    <td><%=String.format("R$ %.2f", cap)%></td>
                    <td><%=String.format("R$ %.2f", juros)%></td>
                    <td><%=String.format("R$ %.2f", parcela)%></td>
                    <td><%=String.format("R$ %.2f", capital)%></td>
                </tr>
                <%}%>
            </table>
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>

<%-- 
    Document   : price
    Created on : 17/04/2017, 23:42:05
    Author     : Jarvis Note
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
            <h2>Sistema Francês de Amortização (Tabela Price)</h2>
            <%
            double capital = 0;
            double taxa = 0;
            double devedor = 0;
            double amorti = 0;
            double prestacao = 0;
            int meses = 0;
            
            try{capital = Double.parseDouble(request.getParameter("C"));}
            catch(Exception e){}
            try{taxa = Double.parseDouble(request.getParameter("j"));}
            catch(Exception e){}
            try{meses = Integer.parseInt(request.getParameter("m"));}
            catch(Exception e){}

            taxa = taxa/100;
            double linha1 = capital * taxa;
            double x = Math.pow((1+taxa),meses);
            double linha2 = 1-(1/x);
                                    
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
                    <th>Saldo Devedor</th>
                    <th>Valor da Prestação</th>
                    <th>Valor dos Juros</th>
                    <th>Amortização</th>
                    
                <%for(int i = 0; i <= meses; i++){
                    
                    double juros = 0;
                    
                    if(i == 0){
                        devedor = capital;
                        prestacao = 0;
                        juros = 0;
                        amorti = 0;
                    }
                    else{
                        prestacao = linha1/linha2;
                        juros = devedor * taxa;
                        devedor = (devedor+juros)- prestacao;
                        amorti = prestacao - juros;
                    }                   
                %>                
                <tr>
                    <td><%=i%></td>
                    <td><%=String.format("R$ %.2f", devedor)%></td>
                    <td><%=String.format("R$ %.2f", prestacao)%></td>
                    <td><%=String.format("R$ %.2f", juros)%></td>
                    <td><%=String.format("R$ %.2f", amorti)%></td>
                </tr>
                <%}%>
            </table>
        </div>
        <%@include file="WEB-INF/footer.jspf"%>
    </body>
</html>
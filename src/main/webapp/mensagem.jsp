<%-- 
    Document   : mensagem
    Created on : Oct 15, 2014, 11:09:19 PM
    Author     : Alesandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resposta!</title>
    </head>
    <body>
        
        <%String resp  = request.getQueryString(); %>
        
        <% for(int i = 0; i < resp.length(); i++){
            if(resp.substring(i,i+1).equals("=")){%>
            
                Entrou aqui!
            
            <%     resp = resp.substring(i+1);
                break;
            }
        }
        %>
        <h3><%=resp%>, login bem sucedido, requsição submetida às <%= new java.util.Date() %>.</h3>
    </body>
</html>

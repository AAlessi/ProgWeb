<%-- 
    Document   : meuform
    Created on : Oct 15, 2014, 8:45:20 PM
    Author     : Alesandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa 3: JSP</title>
    </head>
    <body>
        <%String login = request.getParameter("login");%>
        <%String senha = request.getParameter("senha");%>
        <%String perfil = request.getParameter("perfil");%>
        
        
        
        <%if (login == null || login.trim().isEmpty() || senha == null || senha.trim().isEmpty() || !senha.equals(login)){ response.sendRedirect("/servlet-simples/errologin.html"); }%>
        
        <h5> Os valores de senha e login são: <%= login %> e <%= senha  %> e <%=perfil%> <h5>
                
        <% switch(perfil){
                                case "1":
                                    perfil = "Cliente";
                                    break;
                                case "2":
                                    perfil = "Gerente";
                                    break;
                                case "3":
                                    perfil = "Administrador";
                                    break;    
                            }
        
        response.sendRedirect("mensagem.jsp"+"?perfil=" + perfil);%>
                            
        
        
    </body>
</html>
 
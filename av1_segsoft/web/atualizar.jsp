<%-- 
    Document   : atualizar
    Created on : 26/09/2017, 22:20:04
    Author     : Frank Carrasco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Usuarios</title>
    </head>
    <body>
        <h1>Atualização de Usuarios</h1>
        <form action="AtualizarUsuarioServlet" method="POST">
            UserID: <input type="text" name="userid" value="${param.userid}" readonly="true"/><br>
            Password: <input type="text" name="password" value="${param.password}"/><br>
            <input type="submit" value="Gravar" />
        </form>
    </body>
</html>

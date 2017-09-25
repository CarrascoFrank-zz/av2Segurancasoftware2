<%-- 
    Document   : login
    Created on : 22/08/2017, 18:16:51
    Author     : DesenvolvedorJava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Tela de login</h2>
        <form action="j_security_check" method="POST">
            Usuário:<input type="text" name="j_username" />
            Senha:<input type="password" name="j_password" />
            <input type="submit" value="Login" />
        </form>
    </body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuario</title>
    </head>
    <body>
        <h1>Cadastro de usuarios</h1>
        <form action="CadastrarUsuarioServlet" method="POST">
            userid: <input type="text" name="userid" value=""/><br>
            password: <input type="text" name="password" value=""/><br>
            <input type="submit" value="Gravar" />
        </form>
    </body>
</html>

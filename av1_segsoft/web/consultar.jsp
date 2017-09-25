<%-- 
    Document   : consultar
    Created on : 23/09/2017, 18:31:54
    Author     : Frank Carrasco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar</title>
    </head>
    <body>
        <h1>Consulta de Usuario</h1>
        <table border="1">
            <tr><td>Id</td><td>Nome</td><td></td></tr>
        <c:forEach var="f" items="${usuarios}">
            <tr>
                <td><c:out value="${u.id}}" /></td>
                <td>
                    <form action="ExcluirUsuarioServlet"> 
                        <input type="hidden" name="id" value="${u.id}"/>
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
                <td>
                    <form action="atualizar.jsp"> 
                        <input type="hidden" name="nome" value="${u.id}"/>
                        <input type="submit" value="Atualizar" />
                    </form>
                </td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>

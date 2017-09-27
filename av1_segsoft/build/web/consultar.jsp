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
        <h1>Consulta de Usuarios</h1>
        <table border="1">
            <tr><td>UserID</td><td>Password</td></tr>
        <c:forEach var="u" items="${usuarios}">
            <tr>
                <td><c:out value="${u.userId}" /></td>
                <td><c:out value="${u.password}" /></td>
                
                <td>
                    <form action="ExcluirUsuarioServlet"> 
                        <input type="text" name="userId" value="${u.userid}"/>
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
                <td>
                    <form action="atualizar.jsp"> 
                        <input type="hidden" name="userId" value="${u.userid}"/>
                        <input type="hidden" name="password" value="${u.password}"/>
                        <input type="submit" value="Atualizar" />
                    </form>
                </td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>

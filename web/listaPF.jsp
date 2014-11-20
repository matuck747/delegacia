<%-- 
    Document   : listaPF
    Created on : 13/11/2014, 08:37:11
    Author     : strudel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="servlets.Delito"%>
<%@page import="servlets.DelitoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            table {
                font-family: verdana,arial,sans-serif;
                font-size:11px;
                color:#333333;
                border-width: 1px;
                border-color: #666666;
                border-collapse: collapse;
            }
            tr {
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #666666;
                background-color: #dedede;
            }
            td {
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #666666;
                background-color: #ffffff;
            }
        </style>

        <table>
            <thead>
            <td>Nome</td>
            <td>Estado</td>
        </thead>
        <%
            DelitoDAO dao = new DelitoDAO();
            ArrayList<Delito> delitos = dao.getLista3();

            for (Delito delito : delitos) {
        %>
        <tr>
            <td> <%= delito.getNome()%></td>
            <td> <%= delito.getEstado()%></td>

        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

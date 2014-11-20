<%-- 
    Document   : remove-bandido
    Created on : 13/11/2014, 09:28:13
    Author     : strudel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="servlets.Delito"%>
<%@page import="servlets.Delito"%>
<%@page import="servlets.DelitoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>

    <body style="padding-top: 20px;">
        <div class="container">
            <div class="jumbotron">
                <h1 class="text-center">DELEGACIA</h1>

            </div>

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Delegacia</a>
                    </div>
                    <div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="cadastra-fichapolicial.jsp">Add Bandido </a></li>
                            <li class="active"><a href="lista-delitos.jsp">Listar Bandido </a></li>
                            <li class="active"><a href="remove-fichapolicial.jsp">Listar Bandidos Remove</a></li>
                            <li class="active"><a href="altera-fichapolicial.jsp">Alterar Bandido</a></li>
                            <li class="active"><a href="listaPF.jsp">Lista Estado</a></li>
                            <li class="active"><a href="remove-bandido.jsp">Remover</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            
        <form action ="mvc">

            ID : <input type ="text" name ="id" /><br/>
            <input type="hidden" name="logica" value="RemoveDelitoLogica"/>
            <input type ="submit" value ="REMOVER" />

        </form>

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
            <td>ID</td>
            <td>Nome</td>
            <td>CPF</td>
            <td>Residencia</td>
            <td>Tipo de Delito</td>
            <td>Data</td>
            <td>Hora</td>
            <td>Local</td>
            <td>Estado</td>
            <td>IMG</td>
           
        </thead>
        <%
            DelitoDAO dao = new DelitoDAO();
            ArrayList<Delito> delitos = dao.getLista();

            for (Delito delito : delitos) {
        %>
        <tr>
            <td> <%= delito.getId()%></td>
            <td> <%= delito.getNome()%></td>
            <td> <%= delito.getCpf()%> </td>
            <td> <%= delito.getResidencia()%> </td>
            <td> <%= delito.getTipoDelito()%> </td>
            <td> <%= delito.getData()%> </td>
            <td> <%= delito.getHora()%> </td>
            <td> <%= delito.getLocal()%> </td>
            <td> <%= delito.getEstado()%> </td>
            <td> <img src="<%=delito.getImg()%>" height="200" width="200"> </td>
            
        </tr>
        <%
            }
        %>
    </table>


</body>
</html>

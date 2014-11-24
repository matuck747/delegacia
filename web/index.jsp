<%-- 
    Document   : index
    Created on : 11/11/2014, 08:33:27
    Author     : strudel
--%>

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
            
            <div class="row">
            
                <div class="col-xs-12">
                    <img src="http://i2.kym-cdn.com/entries/icons/original/000/016/574/kden.PNG" class="img-responsive" style="width:100%">

                </div>
           
        </div>

        </div>     
    </body>
</html>

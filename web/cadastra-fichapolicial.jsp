<%-- 
    Document   : cadastra-fichapolicial
    Created on : 11/11/2014, 08:33:45
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

            <form role="form" action ="mvc">
                <div class="form-group">
                    <label for="inputEmail">Nome</label>
                    <input type="text" class="form-control" id="inputEmail" name ="nome">
                </div>
                <div class="form-group">
                    <label for="inputSenha">CPF</label>
                    <input type="text" class="form-control" id="inputSenha" name ="cpf">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Residência</label>
                    <input type="text" class="form-control" id="inputSenha" name ="residencia">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Tipo de Delito</label>
                    <input type="text" class="form-control" id="inputSenha" name ="tipoDelito">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Data</label>
                    <input type="text" class="form-control" id="inputSenha" name ="data">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Hora</label>
                    <input type="text" class="form-control" id="inputSenha" name = "hora">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Local</label>
                    <input type="text" class="form-control" id="inputSenha" name = "local">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Estado</label>
                    <input type="text" class="form-control" id="inputSenha" name = "estado">
                </div>
                <div class="form-group">
                    <label for="inputSenha">Imagem (URL)</label>
                    <input type="text" class="form-control" id="inputSenha" name = "img">
                </div>

                <input type="hidden" name="logica" value="AdicionaDelitoLogic"/>
                <button type="submit" class="btn btn-default">Gravar</button>
            </form>       

            <!--            <form action ="mvc">
            
                            Nome : <input type ="text" name ="nome" /><br/>
                            CPF : <input type ="text" name ="cpf" /><br/>
                            Residência : <input type ="text" name ="residencia"/><br/>
                            Tipo de Delito : <input type ="text" name ="tipoDelito"/> <br/>
                            Data : <input type ="text" name ="data" /> <br/>
                            Hora : <input type = "text" name = "hora" /><br/>
                            Local : <input type = "text" name = "local"/><br/>
                            Estado : <input type = "text" name = "estado"/><br/>
                            Imagem (URL) : <input type = "text" name = "img"/><br/>
                            <input type="hidden" name="logica" value="AdicionaDelitoLogic"/>
                            <input type ="submit" value ="Gravar" />
            
                        </form>-->
        </div>
    </body>
</html>

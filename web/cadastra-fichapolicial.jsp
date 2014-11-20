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
    </head>
    <body>

        <form action ="mvc">
            
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

        </form>
    </body>
</html>

<%-- 
    Document   : operacao
    Created on : 15/07/2016, 14:14:32
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operação</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body>
        <form class="form-horizontal" id="sum" action="Servlet" method="post">
            <fieldset>

                <!-- Number input -->
                <h1 align="center">Calculadora WEB</h1>                
                
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="operacao">Operação</label>
                    <div class="col-md-4">
                        <select id="operacao" name="operacao" class="form-control">
                            <option value="+">Somar</option>
                            <option value="-">Subtrair</option>
                            <option value="*">Multiplicar</option>
                            <option value="/">Dividir</option>
                        </select>
                    </div>
                </div>
                
                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="button1id"></label>
                    <div class="col-md-8">
                        <button id="enviar" name="enviar" type="submit" class="btn btn-success">Enviar</button>                        
                    </div>
                </div>
            </fieldset>
        </form>
    </body>
</html>

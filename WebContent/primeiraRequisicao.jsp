<%-- 
    Document   : requisicao1    
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,br.com.calculadorasession.bean.*"%>
<%@page import="java.util.*,br.com.calculadorasession.modelo.*"%>
<%@page import="java.util.*,br.com.calculadorasession.servlet.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeira Requisição</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body>        
        <form class="form-horizontal" id="sum" action="Servlet" method="post">
            <fieldset>

                <!-- Number input -->
                <h1 align="center">Calculadora WEB</h1>

                <!-- Number 1º -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="op1">Primeiro Número</label>  
                    <div class="col-md-4">
                        <input id="op1" name="op1" type="text" placeholder="Informe o Primeiro 
                        Número a ser calculado" class="form-control input-md" required="">

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

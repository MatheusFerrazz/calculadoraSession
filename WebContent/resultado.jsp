
<%@page import="br.com.calculadorasession.servlet.Servlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculator</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    </head>
    <body background="imagens/fundo.jpg">
        <h1 align="center"><%= request.getAttribute("resposta") %></h1>
        <!-- Button -->
        <div align="center">
            <div class="btn-group btn-group-vertical">
                <a href="index.jsp" class="btn btn-success btn-large active"><span class="glyphicon glyphicon-circle-arrow-left"></span>Voltar</a>
            </div>
        </div>
    </body>
</html>

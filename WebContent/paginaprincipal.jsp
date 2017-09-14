<%-- 
    Document   : paginaprincipal
    Created on : 16/07/2016, 11:11:54
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <input id="op1" name="op1" type="text" placeholder="Informe o Primeiro Número a ser calculado" class="form-control input-md" required="">

                    </div>
                </div>
                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="button1id"></label>
                    <div class="col-md-8">
                        <button id="calcular" name="calcular" type="submit" class="btn btn-success">Calcular</button>                        
                    </div>
                </div>
            
       
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
                
                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="button1id"></label>
                    <div class="col-md-8">
                        <button id="calcular" name="calcular" type="submit" class="btn btn-success">Calcular</button>                        
                    </div>
                </div>
           
                <!-- Number 2° -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="op2">Segundo Número</label>  
                    <div class="col-md-4">
                        <input id="op2" name="op2" type="text" placeholder="Informe o Segundo Número a ser calculado" class="form-control input-md" required="">

                    </div>
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="button1id"></label>
                    <div class="col-md-8">
                        <button id="calcular" name="calcular" type="submit" class="btn btn-success">Calcular</button>                        
                    </div>
                </div>
            </fieldset>
        </form>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 25/10/2016, 15:08:38
    Author     : Lamara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- meta-data -->
<!DOCTYPE html>
<html>
    <%@include file="partes/meta-data.jsp" %>    
    <!-- #Meta-data ------------------------------------------------------------------------------------------------->
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!-- Menu-Topo -->   
            <%@include file="partes/menu-topo.jsp" %>    

            <!-- #fecha MEnu-top ------------------------------------------------------------------------------------------->
            <!-- Menu-lateral -->
            <%@include file="/partes/menu-lateral.jsp" %> 
            <!--#FEcha  Menu-lateral -->

            <!-- Conteúdo ------------------------------------------------------------------------------------------------->
            <div class="content-wrapper">
                <div class="box">
                    <div class="box-header with-border"  style="color: #000">
                        <h1 class="box-title">Reunião</h1>
                        <div class="row">
                            <div class="col-lg-3" style="margin: 10px" >   

                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                <i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                                <i class="fa fa-times"></i></button>
                        </div>

                        <form id="form_receita">
                            <div class="form-group ">
                                <label class="control-label requiredField" for="nome_r">
                                    Nome da reuni&atilde;o
                                    <span class="asteriskField">
                                        *
                                    </span>
                                </label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-slideshare">
                                        </i>
                                    </div>
                                    <input class="form-control" id="nome_r" name="nome_r" type="text"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="date_i">
                                    Data inicial:
                                    <span class="asteriskField">
                                        *
                                    </span>
                                </label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar-plus-o">
                                        </i>
                                    </div>
                                    <input class="form-control" id="date_i" name="date_i" placeholder="DD/MM/YYYY" type="text"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label " for="data_p">
                                    Data da Pr&oacute;xima Reuni&atilde;o:
                                </label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar-check-o">
                                        </i>
                                    </div>
                                    <input class="form-control" id="data_p" name="data_p" placeholder="DD/MM/YYYY" type="text"/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label class="control-label " for="desc">
                                    Descri&ccedil;&atilde;o:
                                </label>
                                <textarea class="form-control" cols="40" id="desc" name="desc" rows="10"></textarea>
                            </div>
                            <div class="form-group">
                                <div>
                                    <button class="btn btn-primary " name="submit" type="submit">
                                        Salvar
                                    </button>
                                </div>
                            </div>
                        </form>
                        <%@include file="/partes/javascript.jsp" %> 


                    </div>
                </div>

            </div>
            <!-- #Fecha Conteúdo -->

            <!-- Abrir Rodapé -------------------------------------------------------------------------------------------->  
            <%@include file="/partes/rodape.jsp" %> 
            <!-- #Fecha rodapé -->

        </div>
        <!-- js -->
        <%@include file="/partes/javascript.jsp" %> 

        <!-- #Fecha js-->
    </body>
</html>


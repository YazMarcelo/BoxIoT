<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Cadastro de Item">
	<jsp:attribute name="content">
		<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cadastrar Item</h4>
                    </div>
                            
                    <div class="card-body">
                    	<form:form method="post" action="/BoxIoT/item" commandName="item">
                    	<h5><b>Campos Obrigatórios</b><b style="color:#ff0000">*</b></h5>


                    		<!--Campos-->
                            <input type="hidden" name="id_controle" value="" />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Local<b style="color:#ff0000">*</b></label>
                                         <br>
                                         <form:input path="idLocal" class="form-control form-idlocal" style="display:none;"/>
                                          <select id="select-idlocal" data-plugin-selectTwo class="form-control populate" required>
                                          					<option value="" selected>Selecione...</option>
                                          					<c:forEach items="${locais}" var="local">
                                          						<option value="${local.id}">${local.descricao}</option>
                                          					</c:forEach>
													</select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Descrição<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" path="descricao" class="form-control"/>
										 <form:errors path="descricao" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="email">Saída<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" type="number" path="saida" class="form-control" value=""/>
										 <form:errors path="saida" />
                                    </div>
                                </div>
                            </div>
                            <button type="submit" id="btn-salvar" class="btn btn-primary pull-right">Salvar</button>
                            <button type="submit" hidden id="btn-submit" class="btn btn-primary pull-right">Salvar</button>
                            <div class="clearfix"></div>
                        	</form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</jsp:attribute>
	<jsp:attribute name="js_personalizado">
	<script src="${pageContext.request.contextPath}/resources/template/js/theme.js"></script>
	<!-- Theme Initialization Files -->
	<script src="${pageContext.request.contextPath}/resources/template/js/theme.init.js"></script>
	    <script type="text/javascript">
	    	$("#select-idlocal").change(function(){
	    		$("#idLocal").val($(this).val());
	    	});
		</script>
	</jsp:attribute>
</mt:simpletemplate>
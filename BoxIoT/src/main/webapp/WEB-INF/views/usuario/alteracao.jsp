<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Alteração de Usuário">
	<jsp:attribute name="content">
		<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cadastrar Usuário</h4>
                    </div>
                    <div class="card-body">
                    	<form:form method="post" action="/BoxIoT/usuario" commandName="usuario">
                    	<h5><b>Campos Obrigatórios</b><b style="color:#ff0000">*</b></h5>


                    		<!--Campos-->
                            <input type="hidden" name="id_controle" value="" />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Nome<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" path="nome" class="form-control" maxlength="100"/>
										 <form:errors path="nome" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="email">Email<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" type="email" path="email" class="form-control"  maxlength="40"/>
										 <form:errors path="email" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="senha">Senha<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" type="password" id="senha" name="senha" path="senha" class="form-control" maxlength="8"/>
										 <form:errors path="senha" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Confirmar Senha<b style="color:#ff0000">*</b></label>
                                        <input required type="password" id="confirm-senha" name="confirm-senha" class="form-control" required maxlength="8">
                                    </div>
                                </div>
                            </div>
                            <h6 style="color:red; margin-left:26%" id="match" hidden><b>Senhas não coincidem, por favor tente novamente!</b></h6>
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
		<script src="${pageContext.request.contextPath}/resources/scripts/usuario.js"></script>
	</jsp:attribute>
</mt:simpletemplate>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Usuario - Cadastro">
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
                            <input type="hidden" name="id_controle" value="" />
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Nome</label>
                                         <form:input path="nome" class="form-control"/>
										 <form:errors path="nome" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="email">Email</label>
                                         <form:input type="email" path="email" class="form-control"/>
										 <form:errors path="email" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="senha">Senha</label>
                                         <form:input type="password" id="senha" name="senha" path="senha" class="form-control"/>
										 <form:errors path="senha" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Confirmar Senha</label>
                                        <input type="password" id="confirm-senha" name="confirm-senha" class="form-control" required>
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
</mt:simpletemplate>
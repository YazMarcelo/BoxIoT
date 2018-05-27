<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
			<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">lista de produtos</h4>
                    </div>
                    <div class="card-body">
                    			<form:form method="post" action="/BoxIoT/produtos"
		commandName="produto">
		                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Titulo</label>
                                         <form:input path="title" class="form-control"/>
										 <form:errors path="title" />
                                    </div>
                                </div>
                            </div>
                            		                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating" for="description">Descrição</label>
                                         <form:textarea path="description" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                            		                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Número de paginas</label>
                                        <input type="text"
				name="pages" id="pages" class="form-control" />
                                    </div>
                                </div>
                            </div>
		<div>
			<input type="submit" value="Enviar">
		</div>
	</form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</jsp:attribute>
</mt:simpletemplate>


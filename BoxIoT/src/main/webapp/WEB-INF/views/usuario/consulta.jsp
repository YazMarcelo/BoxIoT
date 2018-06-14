<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!---->
</style>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
			<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Consulta de Usuários</h4>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <a class="btn btn-primary pull-left" style="margin-left: 15px;" href="${pageContext.request.contextPath}/usuario/cadastro"><i class="fa fa-plus"></i> Novo Usuário</a>
                        </div>
                    </div>
                    <div class="card-body">
                    	<div class="table-responsive">
                            <table class="table table-striped">
                                <thead class=" text-primary">
                                    <tr>
                                        <th>Nome</th>
                                        <th>e-Mail</th>
										<th>Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${usuarios}" var="usuario">
										<tr>
											<td>${usuario.nome}</td>
											<td>${usuario.email}</td>
											<td style="width:100px;" class="center">
                                            	<a href="/usuario/alteracao/${usuario.id}" style="padding-right:20px;">
                                                	<i class="fa fa-pencil" aria-hidden="true"></i>
												</a>
                                                <a class="remove-line" href="/usuario/excluir/${usuario.id}">
                                                	<i class="fa fa-remove" aria-hidden="true"></i>
												</a>
                                            </td>
										</tr>
									</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</jsp:attribute>
</mt:simpletemplate>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!---->
</style>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
	<label id="label-msg" hide style="display:none">${msg}</label>
			<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Consulta de Itens</h4>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <a class="btn btn-primary pull-left" style="margin-left: 15px;" href="${pageContext.request.contextPath}/item/cadastro"><i class="fa fa-plus"></i> Novo Item</a>
                        </div>
                    </div>
                    <div class="card-body">
                    	<div class="table-responsive">
                            <table class="table table-striped">
                                <thead class=" text-primary">
                                    <tr>
                                        <th>Descrição</th>
                                        <th>Saída</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${itens}" var="item">
										<tr>
											<td>${item.descricao}</td>
											<td>${item.saida}</td>
											<td style="width:100px;" class="center">
                                            	<a href="${pageContext.request.contextPath}/item/alteracao/${item.id}" style="padding-right:20px;">
                                                	<i class="fa fa-pencil" aria-hidden="true"></i>
												</a>
                                                <a href="#" data-href="${pageContext.request.contextPath}/item/excluir/${item.id}" class="remove-line">
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
	<jsp:attribute name="js_personalizado">
	    <script src="${pageContext.request.contextPath}/resources/scripts/consulta.js"></script>
	</jsp:attribute>
</mt:simpletemplate>

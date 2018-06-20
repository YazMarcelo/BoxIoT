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
                        <h4 class="card-title">Cadastrar Modo</h4>
                    </div>
                    <div class="card-body">
                    	<form:form method="post" action="/BoxIoT/modo" commandName="modo">
                            <input type="hidden" name="id_controle" value="" />
                            <h5><b>Campos Obrigatórios</b><b style="color:#ff0000">*</b></h5>


                    		<!--Campos-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Descrição<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" path="descricao" class="form-control"/>
										 <form:errors path="descricao" />
                                    </div>
                                </div>
                            </div>
                            <h5><b>Acontecimentos</b></h5>
                            
                           <!--Campos-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    <c:forEach items="${locais}" var="local">
                                         <div class="card-collapse">
                						 	<div class="card-header" role="tab" id="headingOne">
                  								<h5 class="mb-0">
                    								<a data-toggle="collapse" href="#collapse-${local.id}" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                      									${local.descricao}
                      									<i class="material-icons">keyboard_arrow_down</i>
                    								</a>
                  								</h5>
                							</div>
											
											<c:forEach items="${itens}" var="item">
												<c:if test = "${item.idLocal == local.id}">
      										       <div id="collapse-${local.id}" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" style="">
                  									<div class="card-body">
                    									Nome Item: ${item.descricao}
                  									</div>
                								</div>
      											</c:if>
											</c:forEach>
              							</div>
                                    </c:forEach>
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
</mt:simpletemplate>
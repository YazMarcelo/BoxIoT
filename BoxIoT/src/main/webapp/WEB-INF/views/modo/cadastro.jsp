<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Cadastro de Modo">
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
                    	<form action="#">
                            <input type="hidden" id="id_controle" name="id_controle" value="" />
                            <h5><b>Campos Obrigatórios</b><b style="color:#ff0000">*</b></h5>


                    		<!--Campos-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Descrição<b style="color:#ff0000">*</b></label>
                                         <input id="descricao" name="descricao" class="form-control" required="required" type="text" value="">
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
											<div id="collapse-${local.id}" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" style="">
											<h5 style="margin-bottom: 5px;margin-top: 10px;"><b>Itens</b></h5>
												<c:forEach items="${itens}" var="item"><c:if test = "${item.idLocal == local.id}">
      										       <div class="card-body div-item">
                    									<b>Nome Item:</b> ${item.descricao}
                    									<input style="display:none;" name="id_item" class="id_controle_item" type="text" value="${item.id}">
                    									<div class="col-sm-5 checkbox-radios">
                                      						<div class="form-check">
                                          						<label class="form-check-label">
                                              						<input class="form-check-input on" type="radio" name="radio-${item.id}" value="true">
                                              							<label>Ligado <b class="porcentagem">100</b>%</label>
                                              						<span class="circle">
                                                  						<span class="check"></span>
                                              						</span>
                                          						</label>
                                          						<br>
										  						<div class="slider-primary" data-plugin-slider data-plugin-options='{ "value": 100, "range": "min", "max": 100 }' data-plugin-slider-output="#slider-${item.id}">
										  							<input id="slider-${item.id}" name="porcentagem" class="slider-item" type="hidden" value="100" />
									      						</div>
																
                                      						</div>

                                      						<div class="form-check">
                                          						<label class="form-check-label">
                                              						<input class="form-check-input off" type="radio" name="radio-${item.id}" value="false" checked>
                                              							Desligado
                                              								<span class="circle">
                                                  								<span class="check"></span>
                                              								</span>
                                          						</label>
                                      						</div>
                                    					</div>
                  									</div>
      											</c:if>
											</c:forEach>
											</div>
              							</div>
                                    </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <button type="button" id="btn-salvar" class="btn btn-primary pull-right">Salvar</button>
                            <div class="clearfix"></div>
                        </form>
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
	    
	    	$("#btn-salvar").click(function(){
	    		$.ajax({
	    			url: "/BoxIoT/modo/salvar",
			        contentType: 'application/json',
			        dataType: "json",
			        data: JSON.stringify({"idModo":$("#id_controle").val(),"descricao": $("#descricao").val(), "itens":[getItens()]}),
			        type: "POST",
			        async: false,
			        complete: function (resultado) {
			        	window.location.replace("http://localhost:8080/BoxIoT/modo");
			        }
			    });
	    	});
	    	
	    	//var jsonModo = JSON.stringify({"descricao": $("#descricao").val(), "itens":"["+itens+"]"});
	    
	    	$('.slider-item').change(function() {
				$(this).parent().parent().find(".porcentagem").text( this.value );
			});
	    	
	    	$(".slider-primary").hide();
	    	$(".on").change(function(){
	    		if($(this).prop('checked') == true){
	    			$(this).parent().parent().find(".slider-primary").show(200);
	    		}
	    	});
	    	$(".off").change(function(){
	    		if($(this).prop('checked') == true){
		    		$(this).parent().parent().parent().find(".slider-primary").hide(200);
	    		}
	    	});
	    	
	    	function getItens(){
	    		var itens = '';
	    		$(".div-item").each(function(e){
	    			if($(this).find(".on").prop("checked") == true){
	    				if(itens.length > 0){
			    			itens += ',' 
			    		}
		    			itens += '{"id":"' + $(this).find(".id_controle_item").val() + '","porcentagem":"' + $(this).find(".porcentagem").html() + '"}';
	    			}
	    		});
	    		return itens;
	    	}
		</script>
	</jsp:attribute>
</mt:simpletemplate>
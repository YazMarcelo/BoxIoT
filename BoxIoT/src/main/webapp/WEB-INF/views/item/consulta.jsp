<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
<!---->
</style>
<mt:simpletemplate title="Consulta de Item">
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
                                        <th>Funções</th>
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
                                            <td style="width:100px;">
                                            	<div class="dropdown">
													<button onclick="myFunction()" class="dropbtn">Funções</button>
  														<div id="myDropdown${item.id}" class="dropdown-content">
    														<a class="ligar-item" href="#" data-href="${pageContext.request.contextPath}/item/ligar/${item.id}">Ligar</a>
    														<a class="desligar-item" href="#" data-href="${pageContext.request.contextPath}/item/desligar/${item.id}">Desligar</a>
  														</div>
												</div>
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
	    
	    <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
$(".dropbtn").click(function(){
	document.getElementById(""+$(this).next().attr('id')).classList.toggle("show");
});
function myFunction() {
    
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
	</jsp:attribute>
</mt:simpletemplate>

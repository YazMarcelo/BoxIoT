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
                        			<table>
		<tr>
			<td>Titulo</td>
			<td>Valores</td>
		</tr>
		<c:forEach items="${usuarios}" var="usuario">
			<tr>
				<td>${usuario.usua_nome}</td>
			</tr>
		</c:forEach>
	</table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</jsp:attribute>
</mt:simpletemplate>

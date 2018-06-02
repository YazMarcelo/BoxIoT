<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<style>
.card.card-stats{
    height: 150px;
    width: 135px;
}

i.fa.fa-lightbulb-o{
    margin-top: 20px !important;
    font-size: 90px !important;
}

.card-title{
text-align: center;
}
</style>
<mt:simpletemplate title="Home Page">
	<jsp:attribute name="content">
	            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="card card-stats">
                                <div class="card-header card-header-warning card-header-icon">
                                    <!--<div class="card-icon">
                                        <i class="material-icons">content_copy</i>
                                    </div>-->
                                    <p class="card-category"></p>
                                    <h3 class="card-title"><i class="fa fa-lightbulb-o"></i>
                                        <!-- <small>GB</small> -->
                                    </h3>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <!-- <i class="material-icons text-danger">warning</i>
                                        <a href="">Get More Space...</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="card card-stats">
                                <div class="card-header card-header-warning card-header-icon">
                                    <!--<div class="card-icon">
                                        <i class="material-icons">content_copy</i>
                                    </div>-->
                                    <p class="card-category"></p>
                                    <h3 class="card-title"><i class="fa fa-lightbulb-o"></i>
                                        <!-- <small>GB</small> -->
                                    </h3>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <!-- <i class="material-icons text-danger">warning</i>
                                        <a href="">Get More Space...</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                         </div>
                          </div>
                           </div>
	</jsp:attribute>
</mt:simpletemplate>
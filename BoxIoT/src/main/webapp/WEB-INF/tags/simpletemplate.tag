<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
     <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/resources/template2/assets/css/material-dashboard.min.css" rel="stylesheet">
    
    <!-- Documentation extras -->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${pageContext.request.contextPath}/resources/template2/assets/assets-for-demo/demo.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/template/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Specific Page Vendor CSS -->
    <link href="${pageContext.request.contextPath}/resources/template/vendor/select2/css/select2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/template/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/template/vendor/pnotify/pnotify.custom.css" rel="stylesheet">
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8"/>
 <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>${title }</title>
<style>
.btn-group.bootstrap-select{
width:300px !important;
}
</style>
</head>
<body>
<div class="wrapper">
        <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
            <!--
                Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

                Tip 2: you can also add an image using data-image tag
            -->
            <div class="logo">
                <a href="" class="simple-text logo-normal">
                    Menu
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item active ">
                        <a class="nav-link" href="${pageContext.request.contextPath}">
                            <i class="material-icons">dashboard</i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/usuario">
                            <i class="fa fa-user"></i>
                            <p>Usuário</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/item">
                            <i class="fa fa-lightbulb-o"></i>
                            <p>Item</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/local">
                            <i class="fa fa-home"></i>
                            <p>Local</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/usuario">
                            <i class="fa fa-unlock-alt"></i>
                            <p>Modo</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute fixed-top">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <a class="navbar-brand" href="">Box IOT</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <form class="navbar-form">
                            <div class="input-group no-border">
                                <input type="text" value="" class="form-control" placeholder="Search..."/>
                                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                    <i class="material-icons">search</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </div>
                        </form>
                        <ul class="navbar-nav">
                            
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            
	<jsp:invoke fragment="content"></jsp:invoke>
	
            <footer class="footer ">
                <div class="container-fluid">
                </div>
            </footer>
        </div>

    </div>
    
    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/core/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/core/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/bootstrap-material-design.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

    <!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/chartist.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/chartist.min.js"></script>
    <!-- Library for adding dinamically elements -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/arrive.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/arrive.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Material Dashboard Core initialisations of plugins and Bootstrap Material Design Library -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/material-dashboard.js"></script>
    <!-- demo init -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/demo.js"></script>

    <script src="${pageContext.request.contextPath}/resources/template/vendor/select2/js/select2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/pnotify/pnotify.custom.js"></script>

    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/popper/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/common/common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/nanoscroller/nanoscroller.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/magnific-popup/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery-placeholder/jquery-placeholder.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/jquery.select-bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/usuario.js"></script>
</body>
</html>
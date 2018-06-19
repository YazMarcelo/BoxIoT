<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
     <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/resources/template2/assets/css/material-dashboard.min.css" rel="stylesheet">
    
    <!-- Documentation extras -->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${pageContext.request.contextPath}/resources/template2/assets/assets-for-demo/demo.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8"/>
 <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Login</title>
<style type="text/css">
.div-login{
    position:  relative;
    top: 25%;
}
</style>
</head>
<body>
<div class="wrapper">            
	<div class="container div-login">
	<div class="col-md-4 col-sm-6 ml-auto mr-auto">
		<form class="form" method="" action="">
			<div class="card card-login card-hidden">
				<div class="card-header card-header-rose text-center">
					<h4 class="card-title">Login</h4>
          		</div>

    			<div class="card-body">
              			<span class="bmd-form-group">
                        	<div class="input-group">
                            	<div class="input-group-prepend">
                                	<span class="input-group-text">
                  						<i class="material-icons">email</i>
                  					</span>
                                </div>
                				<input type="email" class="form-control" placeholder="Email...">
                			</div>
                        </span>
              			<span class="bmd-form-group">
                        	<div class="input-group">
                            	<div class="input-group-prepend">
                                	<span class="input-group-text">
                                    	<i class="material-icons">lock_outline</i>
                                    </span>
                                </div>
                				<input type="password" class="form-control" placeholder="Password...">
              				</div>
                        </span>
    				</div>
    				<div class="card-footer justify-content-center">
        				<a href="#" class="btn btn-rose btn-link btn-lg">Logar</a>
    				</div>
				</div>
			</form>
        </div>
   </div>
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
    
    <!-- Material Dashboard Core initialisations of plugins and Bootstrap Material Design Library -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/material-dashboard.js"></script>
    <!-- demo init -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/demo.js"></script>
    
</body>
</html>
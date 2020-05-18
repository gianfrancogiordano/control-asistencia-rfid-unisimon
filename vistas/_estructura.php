<!doctype html>
<html class="fixed sidebar-left-collapsed">
	<head lang="es-CO">

		<!-- Basic -->
		<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	    <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name='author' content='Gianfranco Giordano'>
	    <meta name='owner' content='Gianfranco Giordano'>
	    
		<title>Rapilist | Asistencia</title>

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/animate/animate.css">

		<link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />
		<link rel="stylesheet" href="assets/vendor/pnotify/pnotify.custom.css" />

		<?php if((MODULO == 'verListas')||(MODULO == 'agregarCurso')||(MODULO == 'vincularEstudiantes')): ?>
		<link rel="stylesheet" href="assets/vendor/select2/css/select2.css" />
		<link rel="stylesheet" href="assets/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" />
		<link rel="stylesheet" href="assets/vendor/datatables/media/css/dataTables.bootstrap4.css" />
		<?php endif ?>

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/css/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/css/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/css/custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		<section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="../2.2.0" class="logo">
						<img src="assets/img/unisimon-logo-25.png" width="150" alt="Rapilist" />
					</a>
					<div class="d-md-none toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fas fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
			
					<form action="pages-search-results.html" class="search nav-form">
						<!-- <div class="input-group">
							<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-append">
								<button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
							</span>
						</div> -->
					</form>
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/img/!logged-user.jpg" alt="Joseph Doe" class="rounded-circle" data-lock-picture="img/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
								<span class="name"><?=$this->sessionGet('nombre') ." ". $this->sessionGet('apellido') ?></span>
								<span class="role"><?=$this->sessionGet('rolDescripcion') ?></span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled mb-2">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fas fa-user"></i> Mi Perfil</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="?logout"><i class="fas fa-power-off"></i> Salida Segura</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
				    <div class="sidebar-header">
				        <div class="sidebar-title">
				            Menú
				        </div>
				        <div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
				            <i class="fas fa-bars" aria-label="Toggle sidebar"></i>
				        </div>
				    </div>
				
				    <div class="nano">
				        <div class="nano-content">
				            <nav id="menu" class="nav-main" role="navigation">
				            
				                <ul class="nav nav-main">
				                    <li>
				                        <a class="nav-link" href="?inicio">
				                            <i class="fas fa-home" aria-hidden="true"></i>
				                            <span>Inicio</span>
				                        </a>                      
				                    </li>
				                    <?php if( $this->sessionGet('idrol') == 3 ): ?>
				                    <li>
				                        <a class="nav-link" href="?pasarLista">
				                            <i class="fas fa-book" aria-hidden="true"></i>
				                            <span>Cursos</span>
				                        </a>                        
				                    </li>
									<?php endif ?>
									<?php if( $this->sessionGet('idrol') == 1 ): ?>

				                    <li class="nav-parent">
				                        <a class="nav-link" href="#">
				                            <i class="fas fa-user-friends" aria-hidden="true"></i>
				                            <span>Agregar Usuarios</span>
				                        </a>
				                        <ul class="nav nav-children">
				                            <li>
				                                <a class="nav-link" href="?agregarPersona&alumno=true">
				                                    Agregar Alumno
				                                </a>
				                            </li>
				                            <li>
				                                <a class="nav-link" href="?agregarPersona&profesor=true">
				                                    Agregar Profesor
				                                </a>
				                            </li>
				                        </ul>
				                    </li>
				            		<li>
				                        <a class="nav-link" href="?agregarCurso">
				                            <i class="fas fa-book" aria-hidden="true"></i>
				                            <span>Agregar Curso</span>
				                        </a>                        
				                    </li>
				            		<li>
				                        <a class="nav-link" href="?vincularEstudiantes">
				                            <i class="fas fa-user-graduate" aria-hidden="true"></i>
				                            <span>Vincular Estudiante</span>
				                        </a>                        
				                    </li>
				            		<li>
				                        <a class="nav-link" href="?crearListas">
				                            <i class="fas fa-clipboard-list" aria-hidden="true"></i>
				                            <span>Crear Listas</span>
				                        </a>                        
				                    </li>
									<?php endif ?>
				                </ul>
				            </nav>
				
				        </div>
				
				        <script>
				            // Maintain Scroll Position
				            if (typeof localStorage !== 'undefined') {
				                if (localStorage.getItem('sidebar-left-position') !== null) {
				                    var initialPosition = localStorage.getItem('sidebar-left-position'),
				                        sidebarLeft = document.querySelector('#sidebar-left .nano-content');
				                    
				                    sidebarLeft.scrollTop = initialPosition;
				                }
				            }
				        </script>
				        
				
				    </div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2><?php echo ucfirst($this->titulo_modulo) ?></h2>

						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fas fa-home"></i>
									</a>
								</li>

								<?php if( $this->modulo_anterior != null ): ?>
								<li><span> <a href="?<?=$this->modulo_anterior?>"><?php echo ucfirst($this->titulo_anterior) ?></a></span></li>
								<?php endif ?>
								<li><span> <a href="?<?=MODULO?>"><?php echo ucfirst($this->titulo_modulo) ?></a></span></li>

							</ol>
					
							<label class="sidebar-right-toggle"><i class="fas fa-chevron-left"></i></label>
						</div>

					</header>

					<!-- start: page -->

					<?php echo $this->vista(); ?>

					<!-- end: page -->
				</section>
			</div>

		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/popper/umd/popper.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/common/common.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		<script src="assets/vendor/pnotify/pnotify.custom.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/js/theme.init.js"></script>

		<!-- Inicializacion de archivos del sistema -->
		<?php if(MODULO == 'inicio'): ?>
		<script src="assets/js/inicio.js?<?=time();?>"></script>
		<?php endif ?>

		<?php if(MODULO == 'pasarLista'): ?>
		<script src="assets/js/pasarLista.js?<?=time();?>"></script>
		<?php endif ?>

		<?php if((MODULO == 'verListas')||(MODULO == 'agregarCurso')||(MODULO == 'vincularEstudiantes')): ?>
		<script src="assets/vendor/select2/js/select2.js"></script>
		<script src="assets/vendor/datatables/media/js/jquery.dataTables.min.js"></script>
		<script src="assets/vendor/datatables/media/js/dataTables.bootstrap4.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/dataTables.buttons.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.bootstrap4.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.html5.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.print.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/JSZip-2.5.0/jszip.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/pdfmake-0.1.32/pdfmake.min.js"></script>
		<script src="assets/vendor/datatables/extras/TableTools/pdfmake-0.1.32/vfs_fonts.js"></script>

			<?php if(MODULO == 'verListas'):?>
				<script src="assets/js/verListas.js?<?=time();?>"></script>
			<?php endif ?>

			<?php if(MODULO == 'agregarCurso'):?>
			<script src="assets/js/agregarCurso.js?<?=time();?>"></script>
			<?php endif ?>

			<?php if(MODULO == 'vincularEstudiantes'): ?>
			<script src="assets/js/vincularEstudiantes.js?<?=time();?>"></script>
			<?php endif ?>

		<?php endif ?>

		<?php if(MODULO == 'agregarPersona'): ?>
		<script src="assets/js/agregarPersona.js?<?=time();?>"></script>
		<?php endif ?>


	</body>
</html>
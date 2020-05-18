<?php if($this->isLog()) {
$this->Vista("null");

} else $this->redirect( "?login" ); ?>


<!DOCTYPE>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista de asistencia</title>

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

    <link rel="stylesheet" href="assets/vendor/select2/css/select2.css" />
    <link rel="stylesheet" href="assets/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" />
    <link rel="stylesheet" href="assets/vendor/datatables/media/css/dataTables.bootstrap4.css" />

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

    <div class="row">
        <div class="col-lg-12">

            <section class="card card-featured card-featured-success mb-4">
                <header class="card-header">
                    <h2 class="card-title">Lista asistencia: <?= $_GET['nombre_curso'] ?></h2>
                </header>
                <div class="card-body">
                   <input type="hidden" id="lista-number" value="<?=$_GET['lista']?>">
                    <table class="table table-striped" cellspacing="0" width="100%" id="datatable-ejecutarLista" data-url="?servicios/ajax_ejecutarLista&tabla=true&lista=<?=$_GET['lista']?>">
                        <thead>
                            <tr>
                                <th># Documento</th>
                                <th>Apellidos</th>
                                <th>Nombres</th>
                                <th>Asistencia</th>
                                <th>Fecha Asistencia</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>

                </div>
            </section>
            
        </div>
    </div>


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
    
    <!-- Theme Base, Components and Settings -->
    <script src="assets/js/theme.js"></script>
    
    <!-- Theme Custom -->
    <script src="assets/js/custom.js"></script>
    
    <!-- Theme Initialization Files -->
    <script src="assets/js/theme.init.js"></script>


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
    <script src="assets/js/ejecutarLista.js?<?=time();?>"></script>

    
</body>
</html>



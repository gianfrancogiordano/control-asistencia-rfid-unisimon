<?php if($this->isLog()) {
$this->Vista("null");


	if(isset($_GET['insertarCurso'])) {

		$codigo       = $_POST['codigoCurso'];
		$nombre       = strtoupper($_POST['nombreCurso']);
		$descripcion  = 'Sin Descripción';//$_POST[''];
		$semestre     = $_POST['semestre'];
		$programa     = $_POST['programa'];
		$profesor     = $_POST['profesor'];

		if( empty($codigo) || empty($nombre) || empty($descripcion) || empty($semestre) || empty($programa) || empty($profesor) ) {

			$res = array('mensaje' => 'Error al enviar el formulario. Llenar todos los campos', 'insert' => false );
			echo json_encode($res);

		} else {

			$sql = "INSERT INTO `rapi_list2019`.`curso` (`cursoId`, `codigo`, `cursoNombre`, `cursoDescripcion`, `semestre`, `curso_programa_id`, `profesor_profesorId`) VALUES (NULL, '".$codigo."', '".$nombre."', '".$descripcion."', '".$semestre."', '".$programa."', '".$profesor."')";
			
			if($this->execMysql($sql)) { 

				$res = array('mensaje' => 'Curso <b>'.$codigo." - ".$nombre.'</b> fue creado con exito!', 'insert' => true, 'tipo' => 'success', 'titulo' => 'CREARCION DE CURSO EXITOSA'); 

			} else { 

				$res = array('mensaje' => 'Error (002) al enviar el formulario. Contactar al administrador del sistema', 'insert' => false, 'tipo' => 'error', 'titulo' => 'ERROR'); 

			}

			echo json_encode($res);
		}
	}

    if(isset($_GET['tabla'])) {

        $aColumns = array( 'C.codigo','C.cursoNombre', 'C.semestre', 'P.programa_nombre', 'F.facultad_nombre', 'PE.personaNombres', 'PE.personaApellidos', 'C.cursoid' );
        $aColumnsName = array( 'codigo', 'cursoNombre', 'semestre', 'programa_nombre', 'facultad_nombre', 'personaNombres', 'personaApellidos', 'cursoid' );
        $aColumnsSearch = array( 'cursoid' );
         
        /* Indexed column (used for fast and accurate table cardinality) */
        $sIndexColumn = "cursoid";
         
        /* DB table to use */
        $sTable = " curso C JOIN programa P ON (C.curso_programa_id = P.programa_id)
					JOIN facultad F ON (P.programa_facultad_id = F.facultad_id)
					JOIN profesor PR ON (C.profesor_profesorId = PR.profesorId)
					JOIN persona PE ON (PR.persona_idPersona = PE.idPersona) ";
        /*
         * Paging
         */
        $sLimit = "";
        if ( isset( $_GET['iDisplayStart'] ) && $_GET['iDisplayLength'] != '-1' )
        {
            $sLimit = "LIMIT ".intval( $_GET['iDisplayStart'] ).", ".
                intval( $_GET['iDisplayLength'] );
        }
         
        /*
         * Ordering
         */
        $sOrder = "ORDER BY cursoid DESC";

        /*
         * Filtering
         */
        $sWhere = ''; //"WHERE C.cursoId = " . $id_curso;
        if ( isset($_GET['sSearch']) && $_GET['sSearch'] != "" )
        {

            $sWhere .= "AND (";
            for ( $i=0 ; $i < count($aColumnsSearch) ; $i++ )
            {
                if ( isset($_GET['bSearchable_'.$i]) && $_GET['bSearchable_'.$i] == "true" )
                {
                    $sWhere .= $aColumnsSearch[$i]." LIKE '".$_GET['sSearch']."%' OR ";
                }
            }
            $sWhere = substr_replace( $sWhere, "", -3 );
            $sWhere .= ')';

        }
         
        /* Individual column filtering */
        for ( $i=0 ; $i<count($aColumnsSearch) ; $i++ )
        {
            if ( isset($_GET['bSearchable_'.$i]) && $_GET['bSearchable_'.$i] == "true" && $_GET['sSearch_'.$i] != '' )
            {
                if ( $sWhere == "" )
                {
                    $sWhere = "WHERE ";
                }
                else
                {
                    $sWhere .= " AND ";
                }
                $sWhere .= $aColumnsSearch[$i]." LIKE '%".$_GET['sSearch_'.$i]."%' ";
            }
        }
         

        /*
         * SQL queries
         * Get data to display
         */
        $sQuery = "
            SELECT SQL_CALC_FOUND_ROWS ".str_replace(" , ", " ", implode(", ", $aColumns))."
            FROM   $sTable
            $sWhere
            $sOrder
            $sLimit
        ";
        //echo $sQuery;
        $rResult = $this->conexion->query($sQuery);
         
        /* Data set length after filtering */
        $sQuery = "

            SELECT FOUND_ROWS()
        ";
        $rResultFilterTotal = $this->conexion->query($sQuery);
        $aResultFilterTotal = mysqli_fetch_array($rResultFilterTotal);
        $iFilteredTotal = $aResultFilterTotal[0];
         
        /* Total data set length */
        $sQuery = "

            SELECT COUNT(*) FROM $sTable $sWhere

        ";
        $rResultTotal = $this->conexion->query($sQuery);
        $aResultTotal = mysqli_fetch_array($rResultTotal);
        $iTotal = $aResultTotal[0];
         
         
        /*
         * Output
         */
        $output = array(
            "sEcho" => intval($_GET['sEcho']),
            "iTotalRecords" => $iTotal,
            "iTotalDisplayRecords" => $iFilteredTotal,
            "aaData" => array()
        );
         
        while ( $aRow = mysqli_fetch_array( $rResult ) )
        {
            $row = array();
            for ( $i=0 ; $i<count($aColumnsName) ; $i++ )
            {
                if ( $aColumnsName[$i] == "version" )
                {
                    /* Special output formatting for 'version' column */
                    $row[] = ($aRow[ $aColumnsName[$i] ]=="0") ? '-' : $aRow[ $aColumnsName[$i] ];
                }
                else if ( $aColumnsName[$i] != ' ' )
                {
                    /* General output */
                    $row[] = $aRow[ $aColumnsName[$i] ];
                }
            }
            $output['aaData'][] = $row;
        }
         
        echo json_encode( $output );

    }

	if(isset($_GET['getProgramas'])) {

		$id_facultad = $_GET['id_fac'];
		$sql = "SELECT programa_id as clave, programa_nombre as nombre FROM `programa` WHERE programa_facultad_id = ".$id_facultad;
		$datos = $this->getData($sql, true);
		$html = '<option value="0">--</option>';
		for ($i=0; $i < count($datos); $i++) { $html .= '<option value="'.$datos[$i]['clave'].'">'.$datos[$i]['nombre'].'</option>'; }
		$res = array('html' => $html, 'res' => true);
		echo json_encode($res);

	}


} else $this->redirect( "?login" ); ?>
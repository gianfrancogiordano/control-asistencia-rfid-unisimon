<?php if($this->isLog()) {
$this->Vista("null");

    if(isset($_GET['rfid'])) {

        $lista = $_GET['lista'];
        $idrfid = $_GET['idrfid'];

        $sql = "UPDATE
                lista L JOIN alumno_has_lista AL ON ( L.idlista = AL.lista_idlista )
                JOIN alumno A ON ( AL.alumno_alumnoId = A.alumnoId )
                LEFT JOIN persona P ON (A.persona_idPersona = P.idPersona)
                SET AL.asistencia = '1', AL.fecha_firma = CURRENT_TIMESTAMP
                WHERE L.idlista = '".$lista."' AND A.alumnoRfid = '".$idrfid."'";

        if( $this->execMysql($sql) ) {

            $msn = "Asistencia registrada exitosamente"; 
            $actualizar = true;

        } else { 

            $msn = "Alumno no encontrado o no matriculado en curso"; 
            $actualizar = false;

        }

        $res = array('mensaje' => $msn, 'actualizar' => $actualizar );
        echo json_encode($res);

    }
	
    if(isset($_GET['tabla'])) {

    	$id_lista = $_GET['lista'];
        $aColumns = array( 'personaDocumento', 'personaApellidos', 'personaNombres', 'asistencia', 'fecha_firma' );
        $aColumnsName = array( 'personaDocumento', 'personaApellidos', 'personaNombres', 'asistencia', 'fecha_firma' );
        $aColumnsSearch = array( 'personaApellidos' );
         
        /* Indexed column (used for fast and accurate table cardinality) */
        $sIndexColumn = "personaApellidos";
         
        /* DB table to use */
        $sTable = " lista L JOIN alumno_has_lista AL ON ( L.idlista = AL.lista_idlista )
                    JOIN alumno A ON ( AL.alumno_alumnoId = A.alumnoId )
                    LEFT JOIN persona P ON (A.persona_idPersona = P.idPersona) ";
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
        $sOrder = "ORDER BY personaApellidos ASC";

        /*
         * Filtering
         */
        $sWhere = "WHERE L.idlista = " . $id_lista;
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


} else $this->redirect( "?login" ); ?>
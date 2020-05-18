<?php if($this->isLog()) {
$this->Vista("null");
	
    if(isset($_GET['tabla'])) {

    	$id_curso = $_GET['curso'];
        $aColumns = array('idlista', 'cursoNombre', 'listaTemaTratado', 'listaMetoUtilizado', 'listaRecursos', 'listaFecha', 'salonNum', 'salonDescripcion');
        $aColumnsName = array('idlista', 'cursoNombre', 'listaTemaTratado', 'listaMetoUtilizado', 'listaRecursos', 'listaFecha', 'salonNum', 'salonDescripcion');
        $aColumnsSearch = array( 'idlista' );
         
        /* Indexed column (used for fast and accurate table cardinality) */
        $sIndexColumn = "idlista";
         
        /* DB table to use */
        $sTable = " lista L JOIN curso C ON (C.cursoId = L.curso_cursoId) 
                    JOIN salon S ON (L.salon_idsalon = S.idsalon) ";
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
        $sOrder = "ORDER BY idlista DESC";

        /*
         * Filtering
         */
        $sWhere = "WHERE C.cursoId = " . $id_curso;
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
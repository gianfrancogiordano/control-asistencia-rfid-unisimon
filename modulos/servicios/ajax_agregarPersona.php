<?php if($this->isLog()) {
$this->Vista("null");

		
	if(isset($_GET['insertarPersona'])) {

		$tipo_rol 		= $_POST['tipoRoles'];
		$nombre 		= strtoupper($_POST['nombres']);
		$apellido 		= strtoupper($_POST['apellidos']);
		$tipo_documento = $_POST['tipoDocumento'];
		$documento 		= $_POST['documento'];
		$direccion 		= $_POST['direccion'];
		$municipio 		= $_POST['municipio'];
		$email 			= $_POST['email'];
		$telefono 		= $_POST['telefono'];
		$tipo_telefono 	= $_POST['tipoTelefono'];
		$programa 		= (isset($_POST['programa']) ? $_POST['programa'] : 'N/A');
		$rfid 			= $_POST['rfidData'];
		$qr 			= $_POST['rfidData'];
		$profesion 		= (isset($_POST['profesion']) ? $_POST['profesion'] : 'Sin Profesion' );
		$usuario 		= $_POST['user'];
		$clave 			= md5(SECURITY_SALT.$_POST['clave']);
		$img_avatar 	= 'img/avatar';

		if( empty($nombre) || empty($apellido) || empty($tipo_documento) || empty($documento) || empty($direccion) || empty($municipio) || empty($telefono) || empty($tipo_telefono) || empty($usuario) || empty($clave) || empty($rfid) || empty($programa) ) {

			$res = array('mensaje' => 'Error al enviar el formulario. Llenar todos los campos', 'insert' => false, 'tipo' => 'warning', 'titulo' => 'LLENAR TODOS LOS CAMPOS' );
			echo json_encode($res);

		} else {

			if($tipo_rol == 3) {

				$lastInsert = "INSERT INTO `profesor` (`profesorId`, `profeFechaIngreso`, `profeRfid`, `profeQr`, `profeTitulo`, `persona_idPersona`) 
					VALUES (NULL, now(), '".$rfid."', '".$qr."', '".$profesion."', @persona_id);"; 

			}

			if($tipo_rol == 4) {

				$lastInsert = "INSERT INTO `alumno` (`alumnoId`, `alumnoFechaIngreso`, `alumnoRfid`, `alumnoQr`, `alumno_programa_id`, `persona_idPersona`) VALUES (NULL, now(), '".$rfid."', '".$qr."', '".$programa."', @persona_id);";
			}

			# INICIO DE TRANSACCION
			$sql[0]['sql'] = "INSERT INTO `persona` (`idPersona`, `personaNombres`, `personaApellidos`, `tipoDocumento_idTipoDocumento`, `personaDocumento`, `personaDireccion`, `municipio_idMunicipio`, `email`, `personaEstado`) VALUES (NULL, '".$nombre."', '".$apellido."', '".$tipo_documento."', '".$documento."', '".$direccion."', '".$municipio."', '".$email."', '1');";
			$sql[1]['sql'] = "SET @persona_id = LAST_INSERT_ID();";
			$sql[2]['sql'] = "INSERT INTO `telefono` (`idTelefono`, `telefonoNumero`, `telefonoTipoTelefono`, `persona_idPersona`) VALUES (NULL, '".$telefono."', '".$tipo_telefono."', @persona_id);";
			$sql[3]['sql'] = "INSERT INTO `perfil` (`idperfil`, `perfilFechaCreacion`, `perfilfechaUltimaConexion`, `perfilUsuario`, `perfilPassword`, `perfilAvatar`, `rol_idrol`, `persona_idPersona`) VALUES (NULL, now(), now(), '".$usuario."', '".$clave."', '".$img_avatar."', '".$tipo_rol."', @persona_id);";	
			$sql[4]['sql'] = $lastInsert;


			if( $this->execTransaction($sql) ) {

				$res = array('mensaje' => 'Usuario <b>'.$nombre." ".$apellido.'</b> fue creado con exito!', 'insert' => true, 'tipo' => 'success', 'titulo' => 'CREARCION EXITOSA');
				echo json_encode($res);

			} else {

				$res = array('mensaje' => 'Error (002) al enviar el formulario. Contactar al administrador del sistema', 'insert' => false, 'tipo' => 'error', 'titulo' => 'ERROR');
				echo json_encode($res);

			}
			# FIN DE TRANSACCION

		}

	}

	if(isset($_GET['getProgramas'])) {

		$id_facultad = $_GET['id_facultad'];
		$sql = "SELECT programa_id as clave, programa_nombre as nombre FROM `programa` WHERE programa_facultad_id = ".$id_facultad;
		$datos = $this->getData($sql, true);
		$html = '<option value="0">--</option>';
		for ($i=0; $i < count($datos); $i++) { $html .= '<option value="'.$datos[$i]['clave'].'">'.$datos[$i]['nombre'].'</option>'; }
		$res = array('html' => $html, 'res' => true);
		echo json_encode($res);

	}

	if(isset($_GET['getMunicipios'])) {

		$id_departamento = $_GET['id_depart'];
		$sql = "SELECT idMunicipio as clave, municipio as nombre FROM `municipio` WHERE departamento_idDepartamento = ".$id_departamento;
		$datos = $this->getData($sql, true);
		$html = '<option value="0">--</option>';
		for ($i=0; $i < count($datos); $i++) { $html .= '<option value="'.$datos[$i]['clave'].'">'.$datos[$i]['nombre'].'</option>'; }
		$res = array('html' => $html, 'res' => true);
		echo json_encode($res);

	}

	if (isset($_GET['checkUser'])) {

		$usuario = $_GET['user'];
		$sql = "SELECT perfilUsuario FROM `perfil` WHERE perfilUsuario = '".$usuario."'";
		$datos = $this->getData($sql, true);
		$repetido = (is_array($datos) ? true : false );
		$res = array('repetido' => $repetido, );
		echo json_encode($res);
	}


} else $this->redirect( "?login" ); ?>
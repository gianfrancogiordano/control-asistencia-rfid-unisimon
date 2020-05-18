<?php $this->Vista('null');

$mensaje = '';

if( isset($_POST['username']) && isset($_POST['pw']) ) {

	$username = $_POST['username'];
	$pwd = md5(SECURITY_SALT.$_POST['pw']);

	$sql = "SELECT perfil.idperfil as id, perfil.perfilUsuario, perfil.perfilAvatar, persona.personaNombres as nombre, persona.personaApellidos as apellido, persona.idPersona, rol.idrol, rol.rolDescripcion 
			FROM `perfil`, `persona`, `rol` 
			WHERE perfil.perfilUsuario = '{$username}' 
			AND perfil.perfilPassword = '{$pwd}' 
			AND perfil.persona_idPersona = persona.idPersona 
			AND perfil.rol_idrol = rol.idrol";

	$datos = $this->getData($sql, true);

	if(is_array($datos) && !is_null($datos)) {

		$this->sessionNew( $datos );
		$mensaje = array('msn' => 'Bienvenido '.$datos[0]['nombre'], 'sesion' => true, 'redirect' => 'index.php?inicio');


	} else {

		$mensaje = array('msn' => 'Contraseña o Usuario Incorrecto', 'sesion' => false);

	}

	echo json_encode($mensaje);
}


?>
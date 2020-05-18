<?php if($this->isLog()) {

	#***************************************************************************
	# Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_agregarCurso");
	$this->titulo_modulo = "Agregar Curso";
	$this->modulo_anterior = null;
	$this->titulo_anterior = null;

	#***************************************************************************
	# llenamos select de facultades
	#***************************************************************************

	$data = '';
	$sql = "SELECT facultad_id as clave, facultad_nombre as nombre FROM `facultad`";
	$data = $this->getData($sql, true);
	$this->facultades = '<option value="0"> -- </option>';
	for ($i=0; $i < count($data); $i++) { $this->facultades .= '<option value="'.$data[$i]['clave'].'">'.$data[$i]['nombre'].'</option>'; }


	#***************************************************************************
	# llenamos select de facultades
	#***************************************************************************

	$data = '';
	$sql = "SELECT F.profesorId as clave, CONCAT(P.personaApellidos, ', ', P.personaNombres) as nombre FROM profesor F JOIN persona P on (F.persona_idPersona = P.idPersona)";
	$data = $this->getData($sql, true);
	$this->profesores = '<option value="0"> -- </option>';
	for ($i=0; $i < count($data); $i++) { $this->profesores .= '<option value="'.$data[$i]['clave'].'">'.$data[$i]['nombre'].'</option>'; }

	#***************************************************************************
	# Fin del modulo
	#***************************************************************************

} else $this->redirect( "?login" ); ?>
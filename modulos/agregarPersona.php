<?php if($this->isLog()) {

	#***************************************************************************
	# Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_persona");
	$this->titulo_modulo = "Agregar Persona";
	$this->modulo_anterior = null;
	$this->titulo_anterior = null;

	#***************************************************************************
	# Cargamos select tipos de documentos
	#***************************************************************************

	$data = '';
	$sql = "SELECT idTipoDocumento as clave, tipoDocumentoDescripcion as nombre FROM `tipoDocumento`";
	$data = $this->getData($sql, true);
	$this->tipo_documento = '<option value="0"> -- </option>';
	for ($i=0; $i < count($data); $i++) { $this->tipo_documento .= '<option value="'.$data[$i]['clave'].'">'.$data[$i]['nombre'].'</option>'; }

	#***************************************************************************
	# Cargamos select departamentos
	#***************************************************************************

	$data = '';
	$sql = "SELECT idDepartamento as clave, departamento as nombre FROM `departamento`";
	$data = $this->getData($sql, true);
	$this->departamento = '<option value="0"> -- </option>';
	for ($i=0; $i < count($data); $i++) { $this->departamento .= '<option value="'.$data[$i]['clave'].'">'.$data[$i]['nombre'].'</option>'; }

	#***************************************************************************
	# Cargamos select facultad
	#***************************************************************************

	$data = '';
	$sql = "SELECT facultad_id as clave, facultad_nombre as nombre FROM `facultad`";
	$data = $this->getData($sql, true);
	$this->facultad = '<option value="0"> -- </option>';
	for ($i=0; $i < count($data); $i++) { $this->facultad .= '<option value="'.$data[$i]['clave'].'">'.$data[$i]['nombre'].'</option>'; }

	#***************************************************************************
	# Fin del modulo
	#***************************************************************************

} else $this->redirect( "?login" ); ?>
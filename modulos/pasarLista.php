<?php if($this->isLog()) {

	#***************************************************************************
	# INICIO -> Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_pasarLista");
	$this->titulo_modulo = "Cursos";
	$this->modulo_anterior = null;
	$this->titulo_anterior = null;

	#***************************************************************************
	# INICIO -> Buscamos los cursos al que el profesor dicta clases (todos)
	#***************************************************************************

	$id_persona = $this->sessionGet('idPersona');
	$sql = "SELECT *
			FROM
			persona P JOIN profesor A ON ( P.idPersona = A.persona_idPersona )
			JOIN curso C ON ( A.profesorId = C.profesor_profesorId )
			WHERE idPersona = $id_persona";
	$this->cursos_profesor = $this->getData($sql, true);

	#***************************************************************************
	# FIN -> Buscamos los cursos al que el profesor dicta clases (todos)
	#***************************************************************************

} else $this->redirect( "?login" ); ?>
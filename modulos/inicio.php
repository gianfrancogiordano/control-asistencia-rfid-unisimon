<?php if($this->isLog()) {

	#***************************************************************************
	# INICIO -> Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_inicio");
	$this->titulo_modulo = "Inicio";
	$this->modulo_anterior = null;
	$this->titulo_anterior = null;

	#***************************************************************************
	# INICIO ->
	#***************************************************************************


} else $this->redirect( "?login" ); ?>
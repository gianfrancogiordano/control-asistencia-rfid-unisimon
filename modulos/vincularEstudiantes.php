<?php if($this->isLog()) {

	#***************************************************************************
	# INICIO -> Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_vincularEstudiantes");
	$this->titulo_modulo = "Vincular Estudiantes";
	$this->modulo_anterior = null;
	$this->titulo_anterior = null;

	#***************************************************************************
	# Fin del modulo
	#***************************************************************************



} else $this->redirect( "?login" ); ?>
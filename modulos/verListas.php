<?php if($this->isLog()) {

	#***************************************************************************
	# INICIO -> Configuraciones del modulo
	#***************************************************************************

	$this->Vista("view_verListas");
	$this->titulo_modulo = "Ver Listas";
	$this->modulo_anterior = 'pasarLista';
	$this->titulo_anterior = 'Cursos';

	#***************************************************************************
	# INICIO ->
	#***************************************************************************



} else $this->redirect( "?login" ); ?>
<?php 

# ARCHIVO DE MANEJO DE SESIONES DE ILITIA V1.0
# AUTOR: GIANFRANCO GIORDANO
# FECHA: 26 DICIEMBRE 2016

 class Sesiones extends Mysql
 {


#==============================================================================
#						Crea la sesion con la data => Array()
#==============================================================================

	public function sessionNew( $data ) {

		foreach ($data as $element => $valor)
		{
			if( is_array( $valor ) )
			{
				$this->sessionNew( $valor );
			}	
			else{

				if( $element != "clave" && !is_numeric( $element ) )
				{
					$this->sessionSet( $element, $valor );
				}

			}
		}

		return true;
	}

#==============================================================================
#						Crea a session del sistema
#==============================================================================

 	public function sessionSet( $clave, $valor ) {

 		$_SESSION[$clave] = $valor;
 	}

#==============================================================================
#				Retorna el estado de la session de la clave
#==============================================================================

 	public function sessionGet( $clave ) {

 		return ( isset($_SESSION[$clave]) ? $_SESSION[$clave] : '' );
 	}

#==============================================================================
#					Retorna el estado de la session actual
#==============================================================================

 	public function isLog() {

 		if( isset($_SESSION['id']) && !is_null($_SESSION['id']) ){

 			return true;
 		}
 		else{

 			return false;
 		}

 	}

#==============================================================================
#					Destruye la session actual
#==============================================================================

 	public function sessionUnset( $clave = 'all' ) {

 		if( $clave != 'all' ){

			unset( $_SESSION[$clave] );
 		}
		else{

			unset( $_SESSION );
			session_destroy();

		}
 	}

 } ?>
<?php

# FUNCIONES HELPERS
# AUTOR: GIANFRANCO GIORDANO
# FECHA: 26 DICIEMBRE 2016

class Helpers extends Sesiones
{


#==============================================================================
#					Redirecciona al url indicado
#==============================================================================

	public function redirect( $url, $modo = "php" ) {

		if($modo == "php") {

			header("location:".$url);

		}
		elseif($modo == "js"){

			echo '<script>window.location.href="'.$url.'";</script>';

		}
	}

	function encrypt($string) {

		$key = 'Som0SCl1ck2019';
	   	$result = '';
	   	for($i=0; $i<strlen($string); $i++) {

	     $char = substr($string, $i, 1);
	     $keychar = substr($key, ($i % strlen($key))-1, 1);
	     $char = chr(ord($char)+ord($keychar));
	     $result.=$char;

	   }
	   return base64_encode($result);
	}

	function decrypt($string) {

		$key = 'Som0SCl1ck2019';
		$result = '';
		$string = base64_decode($string);
		for($i=0; $i<strlen($string); $i++) {
		  $char = substr($string, $i, 1);
		  $keychar = substr($key, ($i % strlen($key))-1, 1);
		  $char = chr(ord($char)-ord($keychar));
		  $result.=$char;
		}
		return $result;
	}


} ?>
<?php

class Mysql extends Nucleo
{
	public $conexion;
	public $id_insertado;
	public $mysql_error;
	public $omitirEnBlanco;

#==============================================================================
#						Conexion a la base de datos
#==============================================================================

	function conexion($SERVER = NULL,$USER = NULL,$PW = NULL,$DB=NULL) {

		if(!$this->conexion = mysqli_connect(
			($SERVER!=NULL?$SERVER:MySQL_S),
			($USER!=NULL?$USER:MySQL_U),
			($PW!=NULL?$PW:MySQL_P)))
		{
			die("Ha ocurrido un error al conectar a la base de datos.");
		}
		$this->conexion->select_db(($DB!=NULL?$DB:MySQL_DB));
		$this->execMysql("SET CHARACTER SET utf8");
	}

	
	function login($username,$pw) {

		$pw = md5(SECURITY_SALT.$pw);
		$sql = "
				SELECT idperfil, perfilFechaCreacion, perfilfechaUltimaConexion, perfilUsuario, perfilAvatar, persona_idPersona, idrol, rolDescripcion 
				FROM perfil, rol
				WHERE perfilUsuario = '$username' 
				AND perfilPassword = '$pw'
				AND perfil.rol_idrol = rol.idrol
				LIMIT 1

				";

		if( $user= $this->getData( $sql, true )) {

			$this->sessionNew($user);
			$upd = "UPDATE `usuarios` SET ultima_vez = '".$this->hora('mysql')."' WHERE id = '".$this->sessionGet('id')."'";

			if($this->conexion->query($upd) === TRUE) {
				return true;

			} else {

				error_log('['.$this->hora().']['.MODULO.' login]:'.$upd.'['.$this->conexion->error.']', 3, CORE_LOG);
				return false;
			}

		} else
		return false;
	}

	function registro($username,$pw, $nombre, $correo) {

		$pw = md5(SECURITY_SALT.$pw);

		if($user= $this->getData("SELECT * FROM usuarios WHERE (usuario = '$username' OR correo = '$correo')  LIMIT 1",true))
		{
			return false;

		}else{

			$idgrupo = 2;
			$inser="INSERT INTO `usuarios`(`id_grupo`, `nombre`, `usuario`, `clave`, `correo`,  `activo`,  `iduser`) VALUES ('".$idgrupo."','".$nombre."','".$username."','".$pw."','".$correo."','1','".$correo."')";

			if($this->conexion->query($inser) === TRUE)
			{
				return true;

			}else{

				error_log('['.$this->hora().']['.MODULO.' login]:'.$upd.'['.$this->conexion->error.']', 3, CORE_LOG);
				return false;
			}
		}
	}

	function insertData($data,$tabla) {

		$campos = "";
		$keys = array_keys($data);
		$campos_completos =false;
		$valores = (!is_array($data[$keys[0]])?'(':'');
		foreach ($data as $elemento => $valor)
		{
			if(is_array($valor))
			{
				$valores .='(';
				foreach ($valor as $a_campos => $a_valores) 
				{
					if(!$campos_completos){$campos .= $a_campos.',';}
					$valores.='\''.$a_valores.'\',';
				}

				if(!$campos_completos)
				{
					$campos = substr($campos, 0, -1).'';
				}
				$campos_completos = true;
				$valores = substr($valores, 0, -1).',\''.$this->sessionGet('id').'\'),';

			}else
			{
				$campos.=$elemento.',';
				$valores.='\''.$valor.'\',';
			}
		}
		$valores = substr($valores, 0, -1).(!is_array($data[$keys[0]])?',\''.$this->sessionGet('id').'\')':'');
		$campos = substr($campos, 0, -1);
		$insert = "INSERT INTO `$tabla` ($campos,iduser)VALUES $valores;";
		if($this->conexion->query($insert) === TRUE){
			$this->id_insertado = $this->conexion->insert_id."";
			//die($this->id_insertado);
			return true;
		}else{
			$this->mysql_error = $this->conexion->error;
			error_log('['.$this->hora().']['.$this->getIp().']['.MODULO.' insertData]:'.$insert.'['.$this->conexion->error.']'."
", 3, MYSQL_LOG);
			return false;
		}
	}

	function mysqlExist($qry) {

		if ($result = $this->conexion->query($qry))
		{
			if($result->num_rows > 0)
			{
				return true;
			}
		}
		return false;
	}

	function execMysql($qry) {

		if( !$this->conexion->query($qry) ) {

			$mysqlres = array('insert' => false, 'mysql' => $this->conexion);
			return $mysqlres;

		} else { return $this->conexion->affected_rows; }

	}

	function execTransaction( $qry ) {

		$insertado = true;
		$this->conexion->begin_transaction();
		for ($i=0; $i < count($qry); $i++) {
			if( !$this->conexion->query($qry[$i]['sql']) ){
				$insertado = false;
			}
		}

		if($insertado) { $this->conexion->commit(); } 
		else { $this->conexion->rollback(); }

		return $insertado;
	}

	function getData($qry,$allField=false) {

		if ($result = $this->conexion->query($qry))
		{

			if($result->num_rows > 0)
			{
				$akey = 0;
				while($row = ($allField?$result->fetch_assoc():$result->fetch_row()))
				{
					$keys = array_keys($row);
					if($allField){
						$index = $akey++;
					}else{
						if(isset($row[$keys[0]]))
							$index = $row[$keys[0]];
						//unset($row[0]);
					}

					if($allField)
					{
						foreach ($row as $key => $value) {
							$rec[$key] = $value;
						}
					}else
					{
						$rec = $row[1];
					}
					$data[$index] = $rec;
				}
			}else
			{
				return false;
			}
		    $result->close();
		}else
		{
			error_log('['.$this->hora().']['.$this->getIp().']['.MODULO.' getData]:'.$qry.'['.$this->conexion->error.']'."
", 3, MYSQL_LOG);
			return false;
		}
		return $data;
	}

	function getConfig($params,$useDefine=false) {

		$parametros = implode("AND ", $params);

		$cfg = $this->getData("SELECT name,value FROM config WHERE activo=1 ".$parametros);
		foreach ($cfg as $newVar => $valor) {
			if(!$useDefine)$this->$newVar=$valor;
			else define($newVar,$valor);
		}
		return true;
	}

	function updateData($fields, $tabla, $id) {
		$usec = "";


		foreach ($fields as $camp => $val) {

		if(is_array($this->omitirEnBlanco)){
			if(in_array($camp, $this->omitirEnBlanco))
				$usec .=  " $camp = $camp,";
			else
			$usec .= " $camp = '$val',";
		}else
			$usec .= " $camp = '$val',";

		}

		$usec = substr($usec, 0,-1);
		//$upd = "UPDATE $tabla SET $usec WHERE id = '$id' ".($this->sessionGet('id_grupo')!=1 ? "AND iduser = '".$this->sessionGet('id')."'" : "")." LIMIT 1";

		$upd = "UPDATE $tabla SET $usec WHERE id = '$id' LIMIT 1";

	//echo $upd.'<br>';
		if($this->conexion->query($upd) === TRUE){
			return true;
		}else
			return false;


	}

	function getPermiso() {
		$p_g = true;// $this->getData("SELECT modulo,nivel FROM privilegios_grupo WHERE modulo = '".MODULO."' AND id_grupo='".$this->sessionGet('id_grupo')."'");
		if(!$p_g)
		{
			return false;
		}
		return true;
	}

}

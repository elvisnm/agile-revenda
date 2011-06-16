<?php
/**
 * Classe utilizada para validação de usuário
 * @author Elvis Moreira
 * @version 1.0
 * @data 09-06-2011
 */
class UsuarioRevenda{
	/**
	 * Método que verifica se o usuário é válido e tem acesso liberado para efetuar buscas
	 * @varchar userID
	 * @return bolean
	 */
	public function valida($serial){
		$userSerial = isset($serial) ? addslashes($serial) : "";
		if(Sql::QueryPesquisa("SELECT * FROM agile_usuarios WHERE serial='".$userSerial."' AND `status`=1")){
			return true;
		}else{
			return false;
		}
	}
}
?>
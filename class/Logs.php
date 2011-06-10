<?php
/**
 * Classe utilizada para salvar logs de pesquisa
 * @author Elvis Moreira
 * @version 1.0
 * @data 10-06-2011
 */
class Logs{
	/**
	 * Método utilizado para gravar log de pesquisa na tabela da respectiva busca
	 * @string tabela
	 * @int userID
	 * @return bolean
	 */
	public function salvarConsulta($tabela, $serial){
		$data = date('d/m/Y');
		$hora = date('H:i:s');
		$userID = Sql::QueryPesquisa("SELECT id FROM agile_usuarios WHERE serial='".$serial."'")->id;
		$sql = Sql::QueryInsert("INSERT INTO `$tabela` (user_id, data, hora) VALUES ($userID, '$data', '$hora')");
		if($sql==true){
			return true;
		}else{
			return false;
		}
	}
}
?>
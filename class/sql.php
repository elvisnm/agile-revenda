<?
class Sql{
	/*
	* Método que faz uma pesquisa no banco e retorna um objeto com os valores de cada coluna
	*/
	public function QueryPesquisa($sql) {
		$result = mysql_query("$sql");
		return mysql_fetch_object($result);
	}
	
	/*
	* Método que faz uma pesquisa e retorna mais de um valor
	*/
	public function QueryPesquisas($sql) {
		$result = mysql_query("$sql"); 
		$objects = array();
		while ($object = mysql_fetch_object($result)){
				$objects[]=Func::htmlspecialcharsObject($object); 
			}
		return $objects;
	}
	
	/*
	* Método que insere registros em tabelas
	*/
	public function QueryInsert($sql) {
		$result = mysql_query("$sql");
		if ($result==true){
		return true;
		}
	}
	
	/*
	* Método que faz update de registros em tabelas
	*/
	public function QueryUpdate($sql) {
		$result = mysql_query("$sql");
		if (mysql_affected_rows()>0){
			return true;
		}
	}
	
	/*
	* Método que faz deleta registros em tabelas
	*/
	public function QueryDelete($sql) {
		$result = mysql_query("$sql");
		if (mysql_affected_rows()>0){
			return true;
		}
	}
}
?>
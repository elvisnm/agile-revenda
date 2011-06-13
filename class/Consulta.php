<?php
/**
 * Classe utilizada para efetuar consultas
 * @author Elvis Moreira
 * @version 1.0
 * @data 09-06-2011
 */
class Consulta{
	/**
	 * Método que retorna a consulta em XML
	 * @varchar link
	 * @return SimpleXMLElement Object
	 */
	public function efetuarConsulta($link){
		$xml = simplexml_load_file($link);
		return $xml;
	}
	
	/**
	 * Válida se consulta foi efetuada e é válida
	 * @Object SimpleXMLElement
	 * @string prefix
	 * @return bolean
	 */
	public function isValida($consulta, $prefix){
		foreach($consulta->$prefix as $result){
			if(isset($result->situacao[0]) && $result->situacao[0]=="SISTEMA INDISPONIVEL TEMPORARIAMENTE"){
				return false;
			}else{
				return true;
			}
		}
	}
}
?>
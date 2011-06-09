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
}
?>
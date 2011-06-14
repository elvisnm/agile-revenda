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
	
	/**
	 * Retorna os dados da consulta
	 * @return array
	 */
	public function getDados($value){
		//Motor
		if(preg_match('/^[0-9]{8}/', $value)==true){
			$array = array("tipo"=>"motor", 'value'=>$value);
		//CPF
		}elseif(preg_match('/^[0-9]{11}/', $value)==true){
			$array = array("tipo"=>"cpf", 'value'=>$value);
		//CNPJ
		}elseif(preg_match('/^[0-9]{14}/', $value)==true){
			$array = array("tipo"=>"cnpj", 'value'=>$value);
		//Chassi
		}elseif(preg_match('/^[A-Z 0-9]{17}/', $value)==true){
			$array = array("tipo"=>"chassi", 'value'=>$value);
		//Placa
		}elseif(preg_match('/^[A-Z]{3}[0-9]{4}/', $value)==true){
			$array = array("tipo"=>"placa", 'value'=>$value);
		}
		return $array;
	}
}
?>
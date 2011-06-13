<?php
/**
 * Action  usada para consulta Roubo e Furto
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionRouboFurto{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[1];
		$placa = $dados[2];
		//Verifica se o serial do usuário é valido
		if(Usuario::valida($serial)==true){
			$consulta = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=3");
			if(Consulta::isValida($consulta, "binXML")==true){
				print_r($consulta);
				Logs::salvarConsulta("agile_consultas_roubo_furto", $serial);
			}else{
				print_r(utf8_decode(constant("MensagensErro::SERVICE_OFF")));
				Logs::salvarConsulta("agile_consultas_roubo_furto", $serial, 2);
			}
		}else{
			print_r(utf8_decode(constant("MensagensErro::USER_SERIAL_INVALID")));
		}
 	}
	
	public function get ($page) {
 	}

	public function post ($page) {
 	}
}
?>
<?php
/**
 * Action  usada para consulta Sinistro
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionSinistro{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[2];
		$placa = $dados[3];
		//Verifica se o serial do usuário é valido
		if(UsuarioRevenda::valida($serial)==true){
			$consulta = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=8");
			if(Consulta::isValida($consulta)==true){
				print_r($consulta);
				Logs::salvarConsulta("agile_consultas_sinistro", $serial);
			}else{
				print_r(utf8_decode(constant("MensagensErro::SERVICE_OFF")));
				Logs::salvarConsulta("agile_consultas_sinistro", $serial, 2);
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
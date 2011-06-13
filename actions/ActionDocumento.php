<?php
/**
 * Action  usada para consulta Documento
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionDocumento{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[1];
		$documento = $dados[2];
		//Verifica se o serial do usuário é valido
		if(Usuario::valida($serial)==true){
			Logs::salvarConsulta("agile_consultas_documento", $serial);
			print_r(Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$documento."&tipo=14"));
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
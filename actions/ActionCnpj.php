<?php
/**
 * Action  usada para consulta CNPJ
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionCnpj{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[1];
		$cnpj = $dados[2];
		//Verifica se o serial do usuário é valido
		if(Usuario::valida($serial)==true){
			$consulta = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&cnpj=".$cnpj."&tipo=32");
			if(Consulta::isValida($consulta, "LocalizacaoCNPJ")==true){
				print_r($consulta);
				Logs::salvarConsulta("agile_consultas_cnpj", $serial);
			}else{
				print_r(utf8_decode(constant("MensagensErro::SERVICE_OFF")));
				Logs::salvarConsulta("agile_consultas_cnpj", $serial, 2);
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
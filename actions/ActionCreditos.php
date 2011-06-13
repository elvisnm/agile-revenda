<?php
/**
 * Action  usada para consulta Créditos
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionCreditos{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[1];
		$cpf = $dados[2];
		//Verifica se o serial do usuário é valido
		if(Usuario::valida($serial)==true){
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, "http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&cpf=".$cpf."&tipo=24");
			curl_exec($ch);
			curl_close($ch);
			Logs::salvarConsulta("agile_consultas_creditos", $serial);
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
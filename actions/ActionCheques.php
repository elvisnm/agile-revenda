<?php
/**
 * Action  usada para consulta Cheques
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionCheques{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[2];
		$dados = Consulta::getDados($dados[3]);
		//Verifica se o serial do usuário é valido
		if(UsuarioRevenda::valida($serial)==true){
			$consulta = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&".$dados['tipo']."=".$dados['value']."&tipo=21");
			if(Consulta::isValida($consulta, "CCF")==true){
				print_r($consulta);
				Logs::salvarConsulta("agile_consultas_cheques", $serial);
			}else{
				print_r(utf8_decode(constant("MensagensErro::SERVICE_OFF")));
				Logs::salvarConsulta("agile_consultas_cheques", $serial, 2);
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
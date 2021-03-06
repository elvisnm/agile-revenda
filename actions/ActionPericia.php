<?php
/**
 * Action  usada para consulta Perícia
 * @author Elvis Moreira
 * @version 1.0
 * @date 09-060-2011
 */
 
class ActionPericia{

	public function access($page) {		
		$dados = explode("/", Func::getUrl());
		$serial = $dados[2];
		$placa = $dados[3];
		//Verifica se o serial do usuário é valido
		if(UsuarioRevenda::valida($serial)==true){
			//BIN + RF
			$consulta = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=3");
			if(Consulta::isValida($consulta, "binXML")==true){
				//Sinistro
				print_r(Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=8"));
				//Leilão NORTIX
				$nortix = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=9");
				foreach($nortix->LeilaoXML as $leilaoNortix){
					if($leilaoNortix->situacao[0]=="NENHUM REGISTRO ENCONTRADO PARA O DADO INFORMADO"){
						//Leilão CONSEDA
						$conseda = Consulta::efetuarConsulta("http://173.203.71.192/webservice/search.php?serial=1NQ4F09LAQ7&placa=".$placa."&tipo=10");
						foreach($conseda->LeilaoXML as $leilaoConseda){
							if($leilaoConseda->situacao[0]=="NENHUM REGISTRO ENCONTRADO PARA O DADO INFORMADO"){
								//Mostra consulta leilão CONSEDA - se não houver registros, mostra XML informando que não foi encontrado nenhum registro de leilão para a placa informada
								print_r($conseda);
							}
						}
					//Mostra consulta leilão NORTIX
					}else{
						print_r($nortix);
					}
				}
				Logs::salvarConsulta("agile_consultas_pericia", $serial);
			}else{
				print_r(utf8_decode(constant("MensagensErro::SERVICE_OFF")));
				Logs::salvarConsulta("agile_consultas_pericia", $serial, 2);
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
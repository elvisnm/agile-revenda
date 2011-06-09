<?php
include_once ("class/config.php");
include_once ("class/connect.php");
include_once ("class/sql.php");
include_once ("class/func.php");
include_once ("class/Usuario.php");
include_once ("class/MensagensErro.php");
include_once ("class/Consulta.php");
$page = Func::getUrl();
$page = "/$page";
$dados = Sql::QueryPesquisa("SELECT * FROM agile_pages WHERE '$page' regexp concat('^',url,'$') ");
if($dados==FALSE){ //Se a Url não existir no banco redireciona para página de Error
	header ("Location: ./erro.html");
	exit();
}
$require = "actions/$dados->action.php";
include_once ("$require"); // Inclui a Action da página
$action = "$dados->action";
$action = new $action; //Cria uma nova instância na Action
if (count($_POST)>0){ //se vier alguma variavel do Post
	$action->post($dados->template, $template, $_POST);
} else if (count($_GET)>0){ //se vier alguma variavel do Get
	$action->get($dados->template, $template, $_GET);
} else { //se acess
	$action->access($dados->template, $template);
}
?>
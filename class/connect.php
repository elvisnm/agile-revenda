<?
/**
* Conexão com o banco
*/
$_con = @mysql_connect(constant("Config::DBHOST") , constant("Config::DBUSER") , constant("Config::DBSENHA"));
//echo "$_con"; exit;
if($_con===FALSE) {
	echo "Não foi possivel conectar ao MySQL " .
	mysql_error();
	exit;
}
mysql_select_db(constant("Config::DBBANCO") , $_con);
if($_con===FALSE) {
	echo "Não foi possivel conectar ao Banco de Dados" .
	mysql_error();
	exit;
}
?>
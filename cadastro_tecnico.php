<?php

include_once("config.php");

$nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$cpf = filter_input(INPUT_POST, 'cpf', FILTER_SANITIZE_STRING);
$email= filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
$tel = filter_input(INPUT_POST, 'tel', FILTER_SANITIZE_STRING);
$Pdata = filter_input(INPUT_POST, 'Pdata', FILTER_SANITIZE_STRING);
$servico1 = filter_input(INPUT_POST, 'servico1', FILTER_SANITIZE_STRING);
$servico2 = filter_input(INPUT_POST, 'servico2', FILTER_SANITIZE_STRING);
$servico3 = filter_input(INPUT_POST, 'servico3', FILTER_SANITIZE_STRING);
$servico4 = filter_input(INPUT_POST, 'servico4', FILTER_SANITIZE_STRING);
$servico5 = filter_input(INPUT_POST, 'servico5', FILTER_SANITIZE_STRING);

$sql = "INSERT INTO tecn (nome, cpf, email, tel, Pdata, servico1, servico2, servico3, servico4, servico5) VALUES('$nome', '$cpf', '$email', '$tel', '$Pdata', '$servico1', '$servico2', '$servico3', '$servico4', '$servico5')";

$rs = mysqli_query($con, $sql);


if (mysqli_insert_id($con)){
	header ("Location: obrigado.html");
}else{
	echo "Erro: (" . $con->mysqli_connect_errno .") " . $con->mysqli_connect_error;
}
  

?>
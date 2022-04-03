<?php 

include "../Model/aluno.php";

$nome = $_POST['nome_aluno'];

$aluno = new Aluno();

$aluno->setNome($nome);

echo $aluno->getNome();

?>


<?php

$nota1 = filter_input(INPUT_POST, "nota1", FILTER_VALIDATE_INT);
$nota2 = filter_input(INPUT_POST, "nota2", FILTER_VALIDATE_INT);

echo $nota1;
echo "<br>";
echo $nota2;
echo "<br><br>";

$media = ($nota1 + $nota2) / 2;

if ($media >= 7) {
    echo "Aluno aprovado com média: ".$media;
} else if ($media >= 5) {
    echo "Aluno em recuperação com média: ".$media;
} else {
    echo "Aluno reprovado com média: ".$media;
}

?>
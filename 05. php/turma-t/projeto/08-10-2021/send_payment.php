<?php

$forma_pagto = $_POST["forma_pagto"];
$valor_compra = $_POST["valor_compra"];

echo "A forma de pagamento utilizada foi: ".$forma_pagto;
echo "<br>";
echo "O valor da compra é: R$".$valor_compra.",00";
echo "<br><br>";

if ($forma_pagto == "À vista") {
    echo "Pagamento à vista";
} else if ($forma_pagto == "Cartão de crédito") {
    echo "Pagamento com cartão de crédito";
} else if ($forma_pagto == "Crediário") {
    echo "Pagamento no crediário";
} else if ($forma_pagto == "À prazo") {
    echo "Pagamento à prazo";
} else if ($forma_pagto == "Fidelidade") {
    echo "Pagamento no Sistema Fidelidade";
} else {
    echo "Forma de pagamento inválida!"; 
}

?>
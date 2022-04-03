<?php

$saldo = $_POST["saldo"];
$car_price = $_POST["car_price"];

echo "O seu saldo é: R$".$saldo;
echo "<br>";
echo "O valor do carro é: R$".$car_price;
echo "<br>";
echo "<br>";

if ($saldo >= $car_price) {
    echo "Compra Aprovada!";
} else {
    echo "Compra Reprovada";
}

?>
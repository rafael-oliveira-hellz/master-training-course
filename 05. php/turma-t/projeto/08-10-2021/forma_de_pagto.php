<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forma de Pagto - 08-10-2021</title>
</head>
<body>
    <form action="send_payment.php" method="post">
        <label for="forma_pagto">Forma de Pagamento: </label>
        <input type="text" name="forma_pagto" id="forma_pagto"><br><br>

        <label for="valor_compra">Valor da compra: </label>
        <input type="text" name="valor_compra" id="valor_compra"><br><br>

        <input type="submit" value="Calcular">
    </form>
</body>
</html>
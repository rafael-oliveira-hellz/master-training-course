<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Drive Audio ID Getter</title>
</head>

<body>
    <form action="" method="get">
        <label for="yt_id">Insira o link do Google Drive: </label>
        <input type="text" name="gd_id" id="gd_id">
        <input type="submit" value="Get ID">
    </form><br><br>

    <span>Google Drive ID: </span>
    <span id="new_gd_id"><?php
        ini_set('display_errors', true);
        error_reporting(E_ALL | E_STRICT);

        if (!empty($_GET) && $_SERVER['REQUEST_METHOD'] == 'GET') {
            $link = $_GET['gd_id'];
            $new_link = substr($link, 32, -17);
            $spaces = " ";

            echo "https://drive.google.com/uc?export=download&id=" . trim($new_link, $spaces);
        }
        ?></span>

    <button id="cp_btn">Copiar</button>
    <script>
    document.getElementById("cp_btn").addEventListener("click", copy_id);

    function copy_id() {
        var copyText = document.getElementById("new_gd_id");
        var textArea = document.createElement("textarea");
        textArea.value = copyText.textContent;
        document.body.appendChild(textArea);
        textArea.select();
        document.execCommand("Copy");
        textArea.remove();
    }
    </script>
</body>

</html>